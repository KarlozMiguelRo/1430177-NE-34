<?php
/**
 * PE setup
 *
 * @package PEFree
 */

defined( 'ABSPATH' ) || exit;

/**
 * Main Pe Class.
 *
 * @class Product_Enquiry_For_Woocommerce
 */
final class Product_Enquiry_For_Woocommerce {
	/**
	 * Pe plugin version.
	 *
	 * @var string
	 */
	public $version = '3.0.1';

	/**
	 * Plugin name.
	 *
	 * @var string
	 */
	public $plugin_name = 'Product Enquiry For WooCommerce ';

	/**
	 * The single instance of the class.
	 *
	 * @var pe_instance
	 */
	protected static $instance = null;
	/**
	 * [$wdm_form_data description]
	 *
	 * @var array
	 */
	public static $wdm_form_data;
	/**
	 * Main PEFree Instance.
	 *
	 * Ensures only one instance of PEFree is loaded or can be loaded.
	 */
	public static function instance() {
		if ( is_null( self::$instance ) ) {
			self::$instance = new self();
		}
		return self::$instance;
	}
	/**
	 * Class Constructor.
	 */
	public function __construct() {

		if ( ! defined( 'WDM_PE_PLUGIN' ) ) {
			add_action( 'admin_notices', array( $this, 'pefree_base_plugin_inactive_notice' ) );
		}
		$this->includes();
		$this->init_hooks();
		$default_vals        = array( 'show_after_summary' => 'after_add_cart' );
		self::$wdm_form_data = get_option( 'wdm_form_data', $default_vals );
	}
	/**
	 * Hook into actions and filters.
	 *
	 * @since 2.3
	 */
	private function init_hooks() {
		register_deactivation_hook( __FILE__, 'pe_plugin_deactivation' );
		add_action( 'init', array( $this, 'init' ), 0 );
	}
	/**
	 * Used to get form settings onces and access when needed.
	 *
	 * @return array [description]
	 */
	public static function pe_settings() {
		return self::$wdm_form_data;
	}
	/**
	 * Show inactive notice.
	 */
	public function pefree_base_plugin_inactive_notice() {
		if ( ! is_plugin_active( 'woocommerce/woocommerce.php' ) ) {
			/* translators: search, term, abc, xyz, lmn, pqr   */
			echo "<div class='error'><p>" . esc_attr( sprintf( __( '%1$s WooCommerce %2$s plugin is not active. In order to make %3$s Product Enquiry %4$s plugin work, you need to install and activate %5$s WooCommerce %6$s first', 'product-enquiry-for-woocommerce' ), '<strong>', '</strong>', '<strong>', '</strong>', '<strong>', '</strong>' ) ) . '</p></div>';

			if ( is_plugin_active( 'product-enquiry-for-woocommerce/product-enquiry-for-woocommerce.php' ) ) {
				deactivate_plugins( plugin_basename( __FILE__ ) );
			}
			unset( $_GET['activate'] );
		}
	}
	/**
	 * Include required core files used in admin and on the frontend.
	 */
	public function includes() {
		include_once WDM_PE_PLUGIN_PATH . '/includes/class-pe-autoloader.php';
		include_once WDM_PE_PLUGIN_PATH . '/includes/common-functions.php';

		if ( is_admin() ) {
			PE_Admin::instance();
		} else {
			PE_Public::instance();
		}
	}

	/**
	 * Init Pe when WordPress Initialises.
	 */
	public function init() {
		$this->load_plugin_textdomain();
	}
	/**
	 * Deactivate plugin.
	 */
	public function pe_plugin_deactivation() {
		delete_option( 'wdm_privacy_notice_dismissed' );
	}
	/**
	 * Load Localisation files.
	 *
	 * Note: the first-loaded translation file overrides any following ones if the same translation is present.
	 */
	public function load_plugin_textdomain() {
		load_plugin_textdomain( 'product-enquiry-for-woocommerce', false, WDM_PE_PLUGIN_PATH . '/languages/' );
	}
}
