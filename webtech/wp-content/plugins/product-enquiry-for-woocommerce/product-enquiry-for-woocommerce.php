<?php
/**
 * Plugin Name: Product Enquiry for WooCommerce
 * Description: Allows prospective customers or visitors to make enquiry about a product, right from within the product page.
 * Version: 3.0.1
 * Author: WisdmLabs
 * Author URI: https://wisdmlabs.com
 * Plugin URI: https://wordpress.org/plugins/product-enquiry-for-woocommerce
 * License: GPL2
 * Text Domain: product-enquiry-for-woocommerce
 * Domain Path: /languages/
 * WC requires at least: 3.0.0
 * WC tested up to: 4.0.1
 *
 * @package  PEFree
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

define( 'PEFREE_VERSION', '3.0.1' );
define( 'WDM_PE_PLUGIN_PATH', plugin_dir_path( __FILE__ ) );
define( 'WDM_PE_PLUGIN_URL', plugin_dir_url( __FILE__ ) );
define( 'WDM_PE_PLUGIN', __FILE__ );

add_action( 'plugins_loaded', 'wdm_pefree_init' );
/**
 * Init function to initialize the plugin.
 */
function wdm_pefree_init() {
	// phpcs:ignore WordPress.NamingConventions.ValidFunctionName.FunctionNameInvalid
	if ( ! class_exists( 'Product_Enquiry_For_Woocommerce', false ) ) {
		include_once WDM_PE_PLUGIN_PATH . '/includes/class-product-enquiry-for-woocommerce.php';
	}
	Product_Enquiry_For_Woocommerce::instance();
}
