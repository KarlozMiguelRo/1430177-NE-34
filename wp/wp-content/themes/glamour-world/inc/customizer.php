<?php 
/**
 *Glamour World Theme Customizer
 *
 * @package Glamour World
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function glamour_world_customize_register( $wp_customize ) {	
	
	function glamour_world_sanitize_checkbox( $checked ) {
		// Boolean check.
		return ( ( isset( $checked ) && true == $checked ) ? true : false );
	}  
		
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	
	//Layout Options
	$wp_customize->add_section('layout_option',array(
			'title'	=> __('Site Layout','glamour-world'),			
			'priority'	=> 1,
	));		
	
	$wp_customize->add_setting('sitebox_layout',array(
			'sanitize_callback' => 'glamour_world_sanitize_checkbox',
	));	 

	$wp_customize->add_control( 'sitebox_layout', array(
    	   'section'   => 'layout_option',    	 
		   'label'	=> __('Check to Box Layout','glamour-world'),
		   'description'	=> __('if you want to box layout please check the Box Layout Option.','glamour-world'),
    	   'type'      => 'checkbox'
     )); //Layout Section 
	
	$wp_customize->add_setting('color_scheme',array(
			'default'	=> '#f9c700',
			'sanitize_callback'	=> 'sanitize_hex_color'
	));
	
	$wp_customize->add_control(
		new WP_Customize_Color_Control($wp_customize,'color_scheme',array(
			'label' => __('Color Scheme','glamour-world'),			
			 'description'	=> __('More color options in PRO Version','glamour-world'),
			'section' => 'colors',
			'settings' => 'color_scheme'
		))
	);
	
	// Slider Section		
	$wp_customize->add_section( 'slider_options', array(
            'title' => __('Slider Section', 'glamour-world'),
            'priority' => null,
			'description'	=> __('Default image size for slider is 1400 x 717 pixel.','glamour-world'),            			
    ));
	
	$wp_customize->add_setting('sliderpage1',array(
			'default'	=> '0',			
			'capability' => 'edit_theme_options',
			'sanitize_callback'	=> 'absint'
	));
	
	$wp_customize->add_control('sliderpage1',array(
			'type'	=> 'dropdown-pages',
			'label'	=> __('Select page for slide one:','glamour-world'),
			'section'	=> 'slider_options'
	));	
	
	$wp_customize->add_setting('sliderpage2',array(
			'default'	=> '0',			
			'capability' => 'edit_theme_options',
			'sanitize_callback'	=> 'absint'
	));
	
	$wp_customize->add_control('sliderpage2',array(
			'type'	=> 'dropdown-pages',
			'label'	=> __('Select page for slide two:','glamour-world'),
			'section'	=> 'slider_options'
	));	
	
	$wp_customize->add_setting('sliderpage3',array(
			'default'	=> '0',			
			'capability' => 'edit_theme_options',
			'sanitize_callback'	=> 'absint'
	));
	
	$wp_customize->add_control('sliderpage3',array(
			'type'	=> 'dropdown-pages',
			'label'	=> __('Select page for slide three:','glamour-world'),
			'section'	=> 'slider_options'
	));	// Slider Section	
	
	$wp_customize->add_setting('show_slider',array(
				'default' => false,
				'sanitize_callback' => 'glamour_world_sanitize_checkbox',
				'capability' => 'edit_theme_options',
	));	 
	
	$wp_customize->add_control( 'show_slider', array(
			   'settings' => 'show_slider',
			   'section'   => 'slider_options',
			   'label'     => __('Check To Show This Section','glamour-world'),
			   'type'      => 'checkbox'
	 ));//Show Slider Section	
	 
	  // Three Column Services Section
	$wp_customize->add_section('pageboxs_section', array(
		'title'	=> __('Services Page Section','glamour-world'),
		'description'	=> __('Select pages from the dropdown for three column Services Page section','glamour-world'),
		'priority'	=> null
	));		
	
	$wp_customize->add_setting('services-pagebox4',array(
			'default'	=> '0',			
			'capability' => 'edit_theme_options',
			'sanitize_callback'	=> 'absint'
		));
 
	$wp_customize->add_control(	'services-pagebox4',array(
			'type' => 'dropdown-pages',			
			'section' => 'pageboxs_section',
	));		
	
	$wp_customize->add_setting('services-pagebox5',array(
			'default'	=> '0',			
			'capability' => 'edit_theme_options',
			'sanitize_callback'	=> 'absint'
		));
 
	$wp_customize->add_control(	'services-pagebox5',array(
			'type' => 'dropdown-pages',			
			'section' => 'pageboxs_section',
	));
	
	$wp_customize->add_setting('services-pagebox6',array(
			'default'	=> '0',			
			'capability' => 'edit_theme_options',
			'sanitize_callback'	=> 'absint'
		));
 
	$wp_customize->add_control(	'services-pagebox6',array(
			'type' => 'dropdown-pages',			
			'section' => 'pageboxs_section',
	));
	
	$wp_customize->add_setting('show_servicesbox',array(
			'default' => false,
			'sanitize_callback' => 'glamour_world_sanitize_checkbox',
			'capability' => 'edit_theme_options',
	));	 
	
	$wp_customize->add_control( 'show_servicesbox', array(
			   'settings' => 'show_servicesbox',
			   'section'   => 'pageboxs_section',
			   'label'     => __('Check To Show This Section','glamour-world'),
			   'type'      => 'checkbox'
	 ));//Show Services Section	 
	
	
	// Fashioners Page Section 	
	$wp_customize->add_section('fashioners_section', array(
		'title'	=> __('We are Fashioners Section','glamour-world'),
		'description'	=> __('Select Pages from the dropdown for We are Fashioners section','glamour-world'),
		'priority'	=> null
	));		
	
	$wp_customize->add_setting('fashioner_page',array(
			'default'	=> '0',			
			'capability' => 'edit_theme_options',
			'sanitize_callback'	=> 'absint'
		));
 
	$wp_customize->add_control(	'fashioner_page',array(
			'type' => 'dropdown-pages',			
			'section' => 'fashioners_section',
	));		
	
	
	$wp_customize->add_setting('show_fashioner_page',array(
			'default' => false,
			'sanitize_callback' => 'glamour_world_sanitize_checkbox',
			'capability' => 'edit_theme_options',
	));	 
	
	$wp_customize->add_control( 'show_fashioner_page', array(
			   'settings' => 'show_fashioner_page',
			   'section'   => 'fashioners_section',
			   'label'     => __('Check To Show This Section','glamour-world'),
			   'type'      => 'checkbox'
	 ));//Show Fashioner Page Section
	 
	  $wp_customize->add_section('social_sec',array(
			'title'	=> __('Header section social icons','glamour-world'),
			'description' => __( 'Add social icons link here to display in header', 'glamour-world' ),			
			'priority'		=> null
	));
	$wp_customize->add_setting('fb_link',array(
			'default'	=> null,
			'sanitize_callback'	=> 'esc_url_raw'	
	));
	
	$wp_customize->add_control('fb_link',array(
			'label'	=> __('Add facebook link here','glamour-world'),
			'section'	=> 'social_sec',
			'setting'	=> 'fb_link'
	));	
	$wp_customize->add_setting('twitt_link',array(
			'default'	=> null,
			'sanitize_callback'	=> 'esc_url_raw'
	));
	
	$wp_customize->add_control('twitt_link',array(
			'label'	=> __('Add twitter link here','glamour-world'),
			'section'	=> 'social_sec',
			'setting'	=> 'twitt_link'
	));
	$wp_customize->add_setting('gplus_link',array(
			'default'	=> null,
			'sanitize_callback'	=> 'esc_url_raw'
	));
	$wp_customize->add_control('gplus_link',array(
			'label'	=> __('Add google plus link here','glamour-world'),
			'section'	=> 'social_sec',
			'setting'	=> 'gplus_link'
	));
	$wp_customize->add_setting('linked_link',array(
			'default'	=> null,
			'sanitize_callback'	=> 'esc_url_raw'
	));
	$wp_customize->add_control('linked_link',array(
			'label'	=> __('Add linkedin link here','glamour-world'),
			'section'	=> 'social_sec',
			'setting'	=> 'linked_link'
	));
	
	$wp_customize->add_setting('show_socialicons',array(
				'default' => false,
				'sanitize_callback' => 'glamour_world_sanitize_checkbox',
				'capability' => 'edit_theme_options',
	));	 
	
	$wp_customize->add_control( 'show_socialicons', array(
			   'settings' => 'show_socialicons',
			   'section'   => 'social_sec',
			   'label'     => __('Check To show This Section','glamour-world'),
			   'type'      => 'checkbox'
	 ));//Show Social icons Section 
	 
		 
}
add_action( 'customize_register', 'glamour_world_customize_register' );


function glamour_world_custom_css() {
	wp_enqueue_style( 
		'custom-style',
		get_template_directory_uri() . '/css/custom_script.css'
	);
        $color = get_theme_mod( 'color_scheme' );
        $custom_css = "
                a, .recent_articles h2 a:hover,
				#sidebar ul li a:hover,									
				.recent_articles h3 a:hover,					
				.recent-post h6:hover,					
				.page-four-column:hover h3,												
				.postmeta a:hover,
				.social-icons a:hover{
					color: {$color};
                }
				.pagination ul li .current, .pagination ul li a:hover, 
				#commentform input#submit:hover,					
				.nivo-controlNav a.active,
				.learnmore,					
				.appbutton:hover,					
				#sidebar .search-form input.search-submit,				
				.wpcf7 input[type='submit'],
				#featureswrap,
				.column-3:hover .learnmore,
				nav.pagination .page-numbers.current,
				.slide_info .slide_more:hover,
				#sectiopn-first,
				.header-menu ul li a:hover, 
				.header-menu ul li.current-menu-item a,
				.header-menu ul li.current-menu-parent a.parent,
				.header-menu ul li.current-menu-item ul.sub-menu li a:hover {
					background-color: {$color};
                }";
        wp_add_inline_style( 'custom-style', $custom_css );
}
add_action( 'wp_enqueue_scripts', 'glamour_world_custom_css' );


/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function glamour_world_customize_preview_js() {
	wp_enqueue_script( 'glamour_world_customizer', get_template_directory_uri() . '/js/customize-preview.js', array( 'customize-preview' ), '20171016', true );
}
add_action( 'customize_preview_init', 'glamour_world_customize_preview_js' );