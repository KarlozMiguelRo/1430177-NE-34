<?php
/**
 * PE adpackage class
 *
 * @package  PEFree/adpackage
 * @version  3.0.0
 */

if ( ! class_exists( 'PE_Admin_WisdmAdPackage' ) ) {
	/**
	 * The class WisdmAdPackage
	 */
	class PE_Admin_WisdmAdPackage {
		/**
		 * [$events Array]
		 *
		 * @var array
		 */
		private $events = array();
		/**
		 * Hold an instance of the class
		 *
		 * @var null
		 */
		private static $instance = null;
		/**
		 * [__construct description]
		 */
		private function __construct() {
			add_action( 'admin_init', array( $this, 'process_json_file' ) );
			add_action( 'admin_notices', array( $this, 'wdm_events_notice' ) );
			add_action( 'wp_ajax_wdm_dismissed_notice_handler', array( $this, 'ajax_notice_handler' ) );
		}
		/**
		 * [get_instance description].
		 *
		 * @return [type] [description].
		 */
		public static function get_instance() {
			if ( null === self::$instance ) {
				self::$instance = new PE_Admin_WisdmAdPackage();
			}
			return self::$instance;
		}
		/**
		 * [processJsonFile description]
		 */
		public function process_json_file() {
			if ( $this->is_json_file_updated() ) {
				$this->read_events();
				if ( ! empty( $this->events ) ) {
					foreach ( $this->events as $event ) {
						if ( ! empty( $event['id'] ) ) {
							$this->set_cron( $event );
						}
					}
					$this->json_read_complete();
				}
			}
		}
		/**
		 * Chech is_json_file_updated
		 *
		 * @return boolean [description].
		 */
		private function is_json_file_updated() {
			$wdm_ad_json_hash = get_option( 'wdm_ad_json_hash', 0 );

			if ( $this->is_first_time_json_read( $wdm_ad_json_hash ) ) {
				return true;
			}

			if ( $this->is_hash_updated( $wdm_ad_json_hash ) ) {
				return true;
			}

			return false;
		}
		/**
		 * Read_events
		 */
		private function read_events() {
			$event_json_path = plugin_dir_path( __FILE__ ) . 'WisdmAd/wdm_events.json';
			if ( file_exists( $event_json_path ) ) {
				// @codingStandardsIgnoreLine
				$str          = file_get_contents( $event_json_path );
				$this->events = json_decode( $str, true );
			}
		}
		/**
		 * Json_read_complete
		 */
		private function json_read_complete() {
			// @codingStandardsIgnoreLine
			$hash = file_get_contents( $this->get_hash_file_path() );
			if ( $hash ) {
				update_option( 'wdm_ad_json_hash', $hash );
			}
		}
		/**
		 * Check is_first_time_json_read
		 *
		 * @param  [type] $wdm_ad_json_hash [description].
		 * @return boolean                   [description].
		 */
		private function is_first_time_json_read( $wdm_ad_json_hash ) {
			// Checks if the system is reading json for the first time.
			return empty( $wdm_ad_json_hash );
		}
		/**
		 * [is_hash_updated description]
		 *
		 * @param  [type] $wdm_ad_json_hash [description].
		 * @return boolean                   [description].
		 */
		private function is_hash_updated( $wdm_ad_json_hash ) {
			$hash_path = $this->get_hash_file_path();

			if ( ! file_exists( $hash_path ) ) {
				return false;
			}
			// @codingStandardsIgnoreLine
			if ( $wdm_ad_json_hash !== file_get_contents( $hash_path ) ) {
				return true;
			}

			return false;
		}
		/**
		 * [get_hash_file_path description].
		 *
		 * @return [type] [description].
		 */
		private function get_hash_file_path() {
			return plugin_dir_path( __FILE__ ) . 'WisdmAd/event_hash.txt';
		}
		/**
		 * Wdm_events_notice
		 */
		public function wdm_events_notice() {
			if ( $this->get_persistent_transient( 'wdm-ad-package' ) ) {
				echo $this->get_persistent_transient( 'wdm-ad-package' );
			}
		}
		/**
		 * [set_cron description]
		 *
		 * @param [type] $event_data [description].
		 */
		private function set_cron( $event_data ) {
			if ( ! $this->is_valid_event( $event_data ) ) {
				return;
			}
			$start_date = new \DateTime( $event_data['start'], new \DateTimeZone( 'America/New_York' ) );
			$end_date   = new \DateTime( $event_data['end'] . ' 23:59:59', new \DateTimeZone( 'America/Los_Angeles' ) );

			$client_timezone = $this->get_client_time_zone();

			$start_date->setTimezone( new \DateTimeZone( $client_timezone ) );
			$end_date->setTimezone( new \DateTimeZone( $client_timezone ) );

			$local_current_time_stamp = current_time( 'timestamp' );

			$local_ad_start_time_stamp = $start_date->getTimestamp();
			$local_ad_end_time_stamp   = $end_date->getTimestamp();

			// If ad has not started.
			if ( $local_current_time_stamp < $local_ad_start_time_stamp ) {
				$expiration = $local_ad_end_time_stamp - $local_ad_start_time_stamp;
			} else {
				$expiration = $local_ad_end_time_stamp - $local_current_time_stamp;
			}

			if ( $local_current_time_stamp < $local_ad_end_time_stamp ) {
				$args = array(
					'event_data'      => $event_data,
					'expiration_time' => $expiration,
				);
				if ( ! wp_next_scheduled( 'wdm_ad_schedule_hook' ) ) {
					wp_schedule_single_event( $local_ad_start_time_stamp, 'wdm_ad_schedule_hook', $args );
				}
			}
		}
		/**
		 * [is_valid_event description].
		 *
		 * @param  array $event_data [description].
		 * @return boolean             [description].
		 */
		private function is_valid_event( $event_data = array() ) {
			if ( empty( $event_data['start'] ) ) {
				return false;
			}

			if ( empty( $event_data['end'] ) ) {
				return false;
			}

			if ( empty( $event_data['title'] ) ) {
				return false;
			}

			if ( empty( $event_data['link'] ) ) {
				return false;
			}

			if ( empty( $event_data['descr'] ) ) {
				return false;
			}

			return true;
		}
		/**
		 * [get_client_time_zone description].
		 */
		private function get_client_time_zone() {
			$client_timezone = get_option( 'timezone_string' );

			if ( $client_timezone ) {
				return $client_timezone;
			}

			$client_gmt_offset = get_option( 'gmt_offset' );

			if ( 0 === $client_gmt_offset || empty( $client_gmt_offset ) ) {
				return 'UTC';
			}

			if ( $client_gmt_offset > 0 ) {
				return '+' . $client_gmt_offset;
			}

			return $client_gmt_offset;
		}
		/**
		 * [load_customwp_admin_style_scripts description]
		 */
		public function load_customwp_admin_style_scripts() {
			wp_enqueue_style( 'wdm_add_wp_admin_css' );
			wp_enqueue_script( 'wdm_add_wp_admin_js' );
		}
		/**
		 * [ajax_notice_handler description].
		 */
		public function ajax_notice_handler() {
			if ( ! empty( $_POST['nonce'] ) ) {
				delete_option( 'wdm-ad-package' );
			}
		}
		/**
		 * [wdaAd_schedule_hook_callback description].
		 *
		 * @param  [type] $event_data      [description].
		 * @param  [type] $expiration_time [description].
		 */
		public function wdad_schedule_hook_callback( $event_data, $expiration_time ) {
			if ( $event_data ) {
				$html = $this->get_adhtml( $event_data );
				$this->set_persistent_transient( 'wdm-ad-package', $expiration_time, $html );
			}
		}
		/**
		 * [get_adhtml description].
		 *
		 * @param  [type] $event_data [description].
		 */
		private function get_adhtml( $event_data ) {
			$html = '<div class="notice is-dismissible notice-wdmad" data-nonce="' . wp_create_nonce( 'wdm-ad-nonce' ) . '"><div class="wdmadouterdiv">
                    <p class="wdmadicon"><img src="' . plugins_url( 'WisdmAd/' . $event_data['icon'], __FILE__ ) . '" /></p>
                    <div class="wdmadmessagediv">
                        <p class="wdmadtitle">' . $event_data['title'] . '</p>
                        <p class="wdmadmsg">' . $event_data['descr'] . '</p>
                    </div>
                    <div class="wdmactiondiv"><a target="_blank" class="button wdmactionbut" href="' . $event_data['link'] . '">Shop Now</a></div>
                </div>
            </div>
            ';
			return $html;
		}
		/**
		 * [set_persistent_transient description].
		 *
		 * @param [type] $transient [description].
		 * @param [type] $time      [description].
		 * @param string $value     [description].
		 */
		private function set_persistent_transient( $transient, $time, $value = '' ) {
			if ( 0 === $time ) {
				$time_out = 0;
			} else {
				$time_out = current_time( 'timestamp' ) + $time;
			}
			$data = array(
				'timeout' => $time_out,
				'value'   => wp_json_encode( $value ),
			);
			update_option( $transient, $data );
		}
		/**
		 * [get_persistent_transient description]
		 *
		 * @param  [type] $transient [description.].
		 */
		private function get_persistent_transient( $transient ) {
			$cache = get_option( $transient );
			if ( 0 !== $cache['timeout'] && ( empty( $cache['timeout'] ) || current_time( 'timestamp' ) > $cache['timeout'] ) ) {
				return false; // Cache is expired.
			}

			return json_decode( $cache['value'] );
		}
	}
}
