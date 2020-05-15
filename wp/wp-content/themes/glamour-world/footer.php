<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package Glamour World
 */
?>

<div class="footer-copyright">
        	<div class="container">
            	<div class="copyright-txt">
					<?php bloginfo('name'); ?>. <?php esc_html_e('All Rights Reserved', 'glamour-world');?>           
                </div>
                <div class="design-by">
				 <a href="<?php echo esc_url( 'https://gracethemes.com/themes/glamour-world/', 'glamour-world' ); ?>">
				 <?php 
				 /* translators: %s: WordPress. */
				 sprintf( __( 'Theme by %s', 'glamour-world' ), 'Grace Themes' ); 
				 ?>
                 </a>
                 
                
                </div>
                 <div class="clear"></div>
            </div>           
        </div>        
</div><!--#end site-holder-->

<?php wp_footer(); ?>
</body>
</html>