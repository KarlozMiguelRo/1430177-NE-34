<?php
/**
 * @package 	WordPress
 * @subpackage 	Good Food
 * @version 	1.0.5
 * 
 * Theme Vars Functions
 * Created by CMSMasters
 * 
 */


/* Register CSS Styles */
function good_food_vars_register_css_styles() {
	wp_enqueue_style('good-food-theme-vars-style', get_template_directory_uri() . '/theme-vars/theme-style' . CMSMASTERS_THEME_STYLE . '/css/vars-style.css', array('good-food-retina'), '1.0.0', 'screen, print');
}

add_action('wp_enqueue_scripts', 'good_food_vars_register_css_styles');

