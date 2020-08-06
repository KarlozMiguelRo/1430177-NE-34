<?php
/**
 * This class creates setting page for Product enquiry
 *
 * @package PE/Menu
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

/**
 * Class for PEFree Settings page.
 */
class PE_Admin_Settings_Form_Tab {
	/**
	 * $pfree_settings
	 *
	 * @var null
	 */
	public static $pfree_settings = null;
	/**
	 * __constructor
	 */
	public function __construct() {
	}
	/**
	 * The single instance of the class.
	 *
	 * @var pe_instance
	 */
	protected static $instance = null;
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
	 * This function is used to display content on tab form_tab.
	 */
	public function form_tab_functionality_helper() {
		wp_enqueue_script( 'wdm-settings' );
		wp_enqueue_script( 'jquery-tiptip' );
		$pro = "<span title='Pro Feature' class='pew_pro_txt'>" . __( '[Available in PRO]', 'product-enquiry-for-woocommerce' ) . '</span>';
		require WDM_PE_PLUGIN_PATH . 'templates/enquiry-tab.php';
	}
}
