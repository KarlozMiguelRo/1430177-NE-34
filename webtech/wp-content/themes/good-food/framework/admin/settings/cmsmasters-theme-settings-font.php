<?php 
/**
 * @package 	WordPress
 * @subpackage 	Good Food
 * @version		1.0.7
 * 
 * Admin Panel Fonts Options
 * Created by CMSMasters
 * 
 */


function good_food_options_font_tabs() {
	$tabs = array();
	
	$tabs['content'] = esc_attr__('Content', 'good-food');
	$tabs['link'] = esc_attr__('Links', 'good-food');
	$tabs['nav'] = esc_attr__('Navigation', 'good-food');
	$tabs['heading'] = esc_attr__('Heading', 'good-food');
	$tabs['other'] = esc_attr__('Other', 'good-food');
	$tabs['google'] = esc_attr__('Google Fonts', 'good-food');
	
	return apply_filters('cmsmasters_options_font_tabs_filter', $tabs);
}


function good_food_options_font_sections() {
	$tab = good_food_get_the_tab();
	
	switch ($tab) {
	case 'content':
		$sections = array();
		
		$sections['content_section'] = esc_html__('Content Font Options', 'good-food');
		
		break;
	case 'link':
		$sections = array();
		
		$sections['link_section'] = esc_html__('Links Font Options', 'good-food');
		
		break;
	case 'nav':
		$sections = array();
		
		$sections['nav_section'] = esc_html__('Navigation Font Options', 'good-food');
		
		break;
	case 'heading':
		$sections = array();
		
		$sections['heading_section'] = esc_html__('Headings Font Options', 'good-food');
		
		break;
	case 'other':
		$sections = array();
		
		$sections['other_section'] = esc_html__('Other Fonts Options', 'good-food');
		
		break;
	case 'google':
		$sections = array();
		
		$sections['google_section'] = esc_html__('Serving Google Fonts from CDN', 'good-food');
		
		break;
	default:
		$sections = array();
		
		
		break;
	}
	
	return apply_filters('cmsmasters_options_font_sections_filter', $sections, $tab);
} 


function good_food_options_font_fields($set_tab = false) {
	if ($set_tab) {
		$tab = $set_tab;
	} else {
		$tab = good_food_get_the_tab();
	}
	
	
	$options = array();
	
	
	$defaults = good_food_settings_font_defaults();
	
	
	switch ($tab) {
	case 'content':
		$options[] = array( 
			'section' => 'content_section', 
			'id' => 'good-food' . '_content_font', 
			'title' => esc_html__('Main Content Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_content_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style' 
			) 
		);
		
		break;
	case 'link':
		$options[] = array( 
			'section' => 'link_section', 
			'id' => 'good-food' . '_link_font', 
			'title' => esc_html__('Links Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_link_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform', 
				'text_decoration' 
			) 
		);
		
		$options[] = array( 
			'section' => 'link_section', 
			'id' => 'good-food' . '_link_hover_decoration', 
			'title' => esc_html__('Links Hover Text Decoration', 'good-food'), 
			'desc' => '', 
			'type' => 'select_scheme', 
			'std' => $defaults[$tab]['good-food' . '_link_hover_decoration'], 
			'choices' => good_food_text_decoration_list() 
		);
		
		break;
	case 'nav':
		$options[] = array( 
			'section' => 'nav_section', 
			'id' => 'good-food' . '_nav_title_font', 
			'title' => esc_html__('Navigation Title Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_nav_title_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform' 
			) 
		);
		
		$options[] = array( 
			'section' => 'nav_section', 
			'id' => 'good-food' . '_nav_dropdown_font', 
			'title' => esc_html__('Navigation Dropdown Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_nav_dropdown_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform' 
			) 
		);
		
		break;
	case 'heading':
		$options[] = array( 
			'section' => 'heading_section', 
			'id' => 'good-food' . '_h1_font', 
			'title' => esc_html__('H1 Tag Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_h1_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform', 
				'text_decoration' 
			) 
		);
		
		$options[] = array( 
			'section' => 'heading_section', 
			'id' => 'good-food' . '_h2_font', 
			'title' => esc_html__('H2 Tag Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_h2_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform', 
				'text_decoration' 
			) 
		);
		
		$options[] = array( 
			'section' => 'heading_section', 
			'id' => 'good-food' . '_h3_font', 
			'title' => esc_html__('H3 Tag Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_h3_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform', 
				'text_decoration' 
			) 
		);
		
		$options[] = array( 
			'section' => 'heading_section', 
			'id' => 'good-food' . '_h4_font', 
			'title' => esc_html__('H4 Tag Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_h4_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform', 
				'text_decoration' 
			) 
		);
		
		$options[] = array( 
			'section' => 'heading_section', 
			'id' => 'good-food' . '_h5_font', 
			'title' => esc_html__('H5 Tag Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_h5_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform', 
				'text_decoration' 
			) 
		);
		
		$options[] = array( 
			'section' => 'heading_section', 
			'id' => 'good-food' . '_h6_font', 
			'title' => esc_html__('H6 Tag Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_h6_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform', 
				'text_decoration' 
			) 
		);
		
		break;
	case 'other':
		$options[] = array( 
			'section' => 'other_section', 
			'id' => 'good-food' . '_button_font', 
			'title' => esc_html__('Button Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_button_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform' 
			) 
		);
		
		$options[] = array( 
			'section' => 'other_section', 
			'id' => 'good-food' . '_small_font', 
			'title' => esc_html__('Small Tag Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_small_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style', 
				'text_transform' 
			) 
		);
		
		$options[] = array( 
			'section' => 'other_section', 
			'id' => 'good-food' . '_input_font', 
			'title' => esc_html__('Text Fields Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_input_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style' 
			) 
		);
		
		$options[] = array( 
			'section' => 'other_section', 
			'id' => 'good-food' . '_quote_font', 
			'title' => esc_html__('Blockquote Font', 'good-food'), 
			'desc' => '', 
			'type' => 'typorgaphy', 
			'std' => $defaults[$tab]['good-food' . '_quote_font'], 
			'choices' => array( 
				'system_font', 
				'google_font', 
				'font_size', 
				'line_height', 
				'font_weight', 
				'font_style' 
			) 
		);
		
		break;
	case 'google':
		$options[] = array( 
			'section' => 'google_section', 
			'id' => 'good-food' . '_google_web_fonts', 
			'title' => esc_html__('Google Fonts', 'good-food'), 
			'desc' => '', 
			'type' => 'google_web_fonts', 
			'std' => $defaults[$tab]['good-food' . '_google_web_fonts'] 
		);
		
		$options[] = array( 
			'section' => 'google_section', 
			'id' => 'good-food' . '_google_web_fonts_subset', 
			'title' => esc_html__('Google Fonts Subset', 'good-food'), 
			'desc' => '', 
			'type' => 'select_multiple', 
			'std' => '', 
			'choices' => array( 
				esc_html__('Latin Extended', 'good-food') . '|' . 'latin-ext', 
				esc_html__('Arabic', 'good-food') . '|' . 'arabic', 
				esc_html__('Cyrillic', 'good-food') . '|' . 'cyrillic', 
				esc_html__('Cyrillic Extended', 'good-food') . '|' . 'cyrillic-ext', 
				esc_html__('Greek', 'good-food') . '|' . 'greek', 
				esc_html__('Greek Extended', 'good-food') . '|' . 'greek-ext', 
				esc_html__('Vietnamese', 'good-food') . '|' . 'vietnamese', 
				esc_html__('Japanese', 'good-food') . '|' . 'japanese', 
				esc_html__('Korean', 'good-food') . '|' . 'korean', 
				esc_html__('Thai', 'good-food') . '|' . 'thai', 
				esc_html__('Bengali', 'good-food') . '|' . 'bengali', 
				esc_html__('Devanagari', 'good-food') . '|' . 'devanagari', 
				esc_html__('Gujarati', 'good-food') . '|' . 'gujarati', 
				esc_html__('Gurmukhi', 'good-food') . '|' . 'gurmukhi', 
				esc_html__('Hebrew', 'good-food') . '|' . 'hebrew', 
				esc_html__('Kannada', 'good-food') . '|' . 'kannada', 
				esc_html__('Khmer', 'good-food') . '|' . 'khmer', 
				esc_html__('Malayalam', 'good-food') . '|' . 'malayalam', 
				esc_html__('Myanmar', 'good-food') . '|' . 'myanmar', 
				esc_html__('Oriya', 'good-food') . '|' . 'oriya', 
				esc_html__('Sinhala', 'good-food') . '|' . 'sinhala', 
				esc_html__('Tamil', 'good-food') . '|' . 'tamil', 
				esc_html__('Telugu', 'good-food') . '|' . 'telugu' 
			) 
		);
		
		break;
	}
	
	return apply_filters('cmsmasters_options_font_fields_filter', $options, $tab);	
}

