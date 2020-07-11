<?php
/**
 * @package 	WordPress
 * @subpackage 	Good Food
 * @version 	1.0.8
 * 
 * Gutenberg Functions
 * Created by CMSMasters
 * 
 */


/* Load Parts */
require_once(get_template_directory() . '/gutenberg/cmsmasters-framework/theme-style' . CMSMASTERS_THEME_STYLE . '/function/module-colors.php');
require_once(get_template_directory() . '/gutenberg/cmsmasters-framework/theme-style' . CMSMASTERS_THEME_STYLE . '/function/module-fonts.php');


/* Register CSS Styles and Scripts */
function good_food_gutenberg_support() {
	$colors = cmsmasters_color_picker_palettes();
	
	$color_palette = array();
	
	
	foreach ($colors as $color) {
		$color_palette[] = array(
			'color' => $color,
		);
	}
	
	
	add_theme_support('editor-color-palette', $color_palette);
}

add_action('after_setup_theme', 'good_food_gutenberg_support');


/* Enqueue Block Editor Styles */
function good_food_gutenberg_editor_styles() {
	wp_deregister_style('wp-block-library-theme');
	wp_register_style('wp-block-library-theme', '');
	
    wp_enqueue_style('good-food-gutenberg-editor-style', get_theme_file_uri( '/gutenberg/cmsmasters-framework/theme-style' . CMSMASTERS_THEME_STYLE . '/css/editor-style.css' ), false, '1.0', 'all');
	
	
	if (is_rtl()) {
		wp_enqueue_style('good-food-gutenberg-editor-style-rtl', get_template_directory_uri() . '/gutenberg/cmsmasters-framework/theme-style' . CMSMASTERS_THEME_STYLE . '/css/module-rtl.css', array(), '1.0.0', 'screen');
	}
	
	
	// Scripts
	wp_enqueue_script('good-food-gutenberg-editor-options-script', get_template_directory_uri() . '/gutenberg/cmsmasters-framework/theme-style' . CMSMASTERS_THEME_STYLE . '/js/editor-options.js', array('jquery'), '1.0.0', true);
	
	
	$gutenberg_module_styles = good_food_gutenberg_module_colors('', true);
	$gutenberg_module_styles .= good_food_gutenberg_module_fonts('', true);
	
	wp_add_inline_style('good-food-gutenberg-editor-style', $gutenberg_module_styles);
}

add_action('enqueue_block_editor_assets', 'good_food_gutenberg_editor_styles');


/* Enqueue Frontend Styles */
function good_food_gutenberg_frontend_styles() {
	wp_enqueue_style('good-food-gutenberg-frontend-style', get_template_directory_uri() . '/gutenberg/cmsmasters-framework/theme-style' . CMSMASTERS_THEME_STYLE . '/css/frontend-style.css', array(), '1.0.0', 'screen');
	
	
	if (is_rtl()) {
		wp_enqueue_style('good-food-gutenberg-frontend-rtl', get_template_directory_uri() . '/gutenberg/cmsmasters-framework/theme-style' . CMSMASTERS_THEME_STYLE . '/css/module-rtl.css', array(), '1.0.0', 'screen');
	}
}

add_action('wp_enqueue_scripts', 'good_food_gutenberg_frontend_styles');



/* Get Gutenberg Editor Posts Container Custom Classes */
function good_food_gutenberg_editor_custom_class_only_gf( $classes ) {
	$user_description = get_the_author_meta('description') ? get_the_author_meta('description') : false;

	$cmsmasters_post_more_posts = get_post_meta(get_the_ID(), 'cmsmasters_post_more_posts', true);
	
	$tgsarray = null;
	
	$r_args = array( 
		'post_status' => 'publish', 
		'ignore_sticky_posts' => 1, 
		'post__not_in' => array(get_the_ID()), 
		'post_type' => 'post' 
	);
	
	
	if (get_the_tags()) {
		$tgsarray = array();
		
		foreach (get_the_tags() as $tagone) {
			$tgsarray[] = $tagone->term_id;
		}
	} else {
		$tgsarray = '';
	}
	
	
	if ($cmsmasters_post_more_posts == 'related' && !empty($tgsarray)) {
		$r_args['tag__in'] = $tgsarray;
	} elseif ($cmsmasters_post_more_posts == 'popular') {
		$r_args['order'] = 'DESC';
		
		$r_args['orderby'] = 'meta_value_num';
		
		$r_args['meta_key'] = 'cmsmasters_likes';
	}
	
	
	$r_query = new WP_Query($r_args);
	
	
    if ( 
		(
			(!isset($_GET['action']) && !isset($_GET['post_type'])) || 
			(isset($_POST['post_type']) && $_POST['post_type'] == 'post') || 
			(isset($_GET['post']) && get_post_type($_GET['post']) == 'post') 
		) && 
		$user_description 
	) {
        $classes = 'author_box_dont_empty';
	}
	
    if (
		(
			$cmsmasters_post_more_posts != 'hide' && 
			(
				(
					$r_query->have_posts() 
				) && (
					$cmsmasters_post_more_posts == 'related' && !empty($tgsarray) || 
					$cmsmasters_post_more_posts != 'related' 
				)
			)
		) || 
		comments_open() 
	) {
        $classes = 'open_post_mor_post_comments';
	}
	
    return $classes;
}

add_filter('admin_body_class', 'good_food_gutenberg_editor_custom_class_only_gf');


//* Get Gutenberg Editor Container Custom Classes */
function good_food_gutenberg_editor_custom_class( $classes ) {
	$cmsmasters_option = good_food_get_global_options();
	$cmsmasters_layout = get_post_meta(get_the_ID(), 'cmsmasters_layout', true);
	$sidebar_id = get_post_meta(get_the_ID(), 'cmsmasters_sidebar_id', true);

	if (CMSMASTERS_WOOCOMMERCE && is_shop()) {
		$sidebar_id = get_post_meta(wc_get_page_id('shop'), 'cmsmasters_sidebar_id', true);
	}
	
	
	if ($sidebar_id != '' && $sidebar_id != false) {
		$sidebar_id = $sidebar_id;
	} else {
		$sidebar_id = 'sidebar_default';
	}
	
	
	if (
		$cmsmasters_layout != 'fullwidth' && 
		(is_active_sidebar($sidebar_id) || is_active_sidebar('sidebar_default'))
	) {
		$classes = 'enable_sidebar';
	}
	
	
    return $classes;
}

add_filter('admin_body_class', 'good_food_gutenberg_editor_custom_class');