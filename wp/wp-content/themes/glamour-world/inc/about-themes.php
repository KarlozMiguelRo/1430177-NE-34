<?php
/**
 *Glamour World About Theme
 *
 * @package Glamour World
 */

//about theme info
add_action( 'admin_menu', 'glamour_world_abouttheme' );
function glamour_world_abouttheme() {    	
	add_theme_page( __('About Theme Info', 'glamour-world'), __('About Theme Info', 'glamour-world'), 'edit_theme_options', 'glamour_world_guide', 'glamour_world_mostrar_guide');   
} 

//Info of the theme
function glamour_world_mostrar_guide() { 	
?>
<div class="wrap-GT">
	<div class="gt-left">
   		   <div class="heading-gt">
			  <h3><?php esc_html_e('About Theme Info', 'glamour-world'); ?></h3>
		   </div>
          <p><?php esc_html_e('glamour-world is a modern, clean, attractive lifestyle and fashion related WordPress theme. This theme is designed to use for designer agency, lifestyle, personal, blogs, photography and many different business and professional websites. It is very easy to setup and it comes with all the basic features that is needed to create your own website.','glamour-world'); ?></p>
<div class="heading-gt"> <?php esc_html_e('Theme Features', 'glamour-world'); ?></div>
 

<div class="col-2">
  <h4><?php esc_html_e('Theme Customizer', 'glamour-world'); ?></h4>
  <div class="description"><?php esc_html_e('The built-in customizer panel quickly change aspects of the design and display changes live before saving them.', 'glamour-world'); ?></div>
</div>

<div class="col-2">
  <h4><?php esc_html_e('Responsive Ready', 'glamour-world'); ?></h4>
  <div class="description"><?php esc_html_e('The themes layout will automatically adjust and fit on any screen resolution and looks great on any device. Fully optimized for iPhone and iPad.', 'glamour-world'); ?></div>
</div>

<div class="col-2">
<h4><?php esc_html_e('Cross Browser Compatible', 'glamour-world'); ?></h4>
<div class="description"><?php esc_html_e('Our themes are tested in all mordern web browsers and compatible with the latest version including Chrome,Firefox, Safari, Opera, IE11 and above.', 'glamour-world'); ?></div>
</div>

<div class="col-2">
<h4><?php esc_html_e('E-commerce', 'glamour-world'); ?></h4>
<div class="description"><?php esc_html_e('Fully compatible with WooCommerce plugin. Just install the plugin and turn your site into a full featured online shop and start selling products.', 'glamour-world'); ?></div>
</div>
<hr />  
</div><!-- .gt-left -->
	
<div class="gt-right">			
        <div>				
            <a href="<?php echo esc_url( glamour_world_LIVE_DEMO ); ?>" target="_blank"><?php esc_html_e('Live Demo', 'glamour-world'); ?></a> | 
            <a href="<?php echo esc_url( glamour_world_PROTHEME_URL ); ?>"><?php esc_html_e('Purchase Pro', 'glamour-world'); ?></a> | 
            <a href="<?php echo esc_url( glamour_world_THEME_DOC ); ?>" target="_blank"><?php esc_html_e('Documentation', 'glamour-world'); ?></a>
        </div>		
</div><!-- .gt-right-->
<div class="clear"></div>
</div><!-- .wrap-GT -->
<?php } ?>