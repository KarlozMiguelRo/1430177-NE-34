<?php
/**
 * @package 	WordPress
 * @subpackage 	Good Food
 * @version 	1.0.0
 *
 * CMSMasters WooCommerce Admin Settings
 * Created by CMSMasters
 *
 */


/* Single Settings */
function good_food_woocommerce_options_general_fields($options, $tab) {
	if ($tab == 'header') {
		$options[] = array(
			'section' => 'header_section',
			'id' => 'good-food' . '_woocommerce_cart_dropdown',
			'title' => esc_html__('Header WooCommerce Cart', 'good-food'),
			'desc' => esc_html__('show', 'good-food'),
			'type' => 'checkbox',
			'std' => 0
		);
	}

	return $options;
}

add_filter('cmsmasters_options_general_fields_filter', 'good_food_woocommerce_options_general_fields', 10, 2);

