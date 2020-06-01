<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div class="container">
 *
 * @package Glamour World
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<?php endif; ?>
<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php
	//wp_body_open hook from WordPress 5.2
	if ( function_exists( 'wp_body_open' ) ) {
	    wp_body_open();
	}
?>
<a class="skip-link screen-reader-text" href="#pagelayout_area">
<?php esc_html_e( 'Skip to content', 'glamour-world' ); ?>
</a>
<?php
$show_slider 	  		= get_theme_mod('show_slider', false);
$show_fashioner_page 	= get_theme_mod('show_fashioner_page', false);
$show_servicesbox 	  	= get_theme_mod('show_servicesbox', false);
$show_socialicons 	  	= get_theme_mod('show_socialicons', false);
?>
<div id="site-holder" <?php if( get_theme_mod( 'sitebox_layout' ) ) { echo 'class="boxlayout"'; } ?>>
<?php
if ( is_front_page() && !is_home() ) {
	if( !empty($show_slider)) {
	 	$inner_cls = '';
	}
	else {
		$inner_cls = 'siteinner';
	}
}
else {
$inner_cls = 'siteinner';
}
?>


<div class="container">
     <div class="site-header <?php echo esc_attr($inner_cls); ?>">      
          <div class="logo">
				<?php glamour_world_the_custom_logo(); ?>
               <h1><a href="<?php echo esc_url(home_url('/')); ?>"><?php bloginfo('name'); ?></a></h1>
           <?php $description = get_bloginfo( 'description', 'display' );
            if ( $description || is_customize_preview() ) : ?>
                 <p><?php echo esc_html($description); ?></p>
         <?php endif; ?>
          </div><!-- logo -->
          <div class="head-rightpart">
               <?php if ( ! dynamic_sidebar( 'header-widget' ) ) : ?>
               <?php endif; // end sidebar widget area ?>  
               <?php if( $show_socialicons != ''){ ?> 
               <div class="social-icons">                   
                   <?php $fb_link = get_theme_mod('fb_link');
		 				if( !empty($fb_link) ){ ?>
            			<a title="facebook" class="fa fa-facebook" target="_blank" href="<?php echo esc_url($fb_link); ?>"></a>
           		   <?php } ?>
                
                   <?php $twitt_link = get_theme_mod('twitt_link');
					if( !empty($twitt_link) ){ ?>
					<a title="twitter" class="fa fa-twitter" target="_blank" href="<?php echo esc_url($twitt_link); ?>"></a>
          		  <?php } ?>
            
    			  <?php $gplus_link = get_theme_mod('gplus_link');
					if( !empty($gplus_link) ){ ?>
					<a title="google-plus" class="fa fa-google-plus" target="_blank" href="<?php echo esc_url($gplus_link); ?>"></a>
           		  <?php }?>
            
           		  <?php $linked_link = get_theme_mod('linked_link');
					if( !empty($linked_link) ){ ?>
					<a title="linkedin" class="fa fa-linkedin" target="_blank" href="<?php echo esc_url($linked_link); ?>"></a>
          		  <?php } ?>                  
             </div><!--end .social-icons--> 
           <?php } ?>   
                    
         </div><!-- .head-rightpart --> 
     	<div class="clear"></div>  
     <div class="mainmenu">
			<div class="toggle">
                 <a class="toggleMenu" href="#"><?php esc_html_e('Menu','glamour-world'); ?></a>
               </div><!-- toggle --> 
               <div class="header-menu">                   
                <?php wp_nav_menu( array('theme_location' => 'primary') ); ?>   
               </div><!--.header-menu -->             
                       
         <div class="clear"></div>      
	 </div><!-- .mainmenu--> 
   </div><!--.site-header -->  
                
</div><!-- container -->   


<?php 
if ( is_front_page() && !is_home() ) {
if($show_slider != '') {
	for($i=1; $i<=3; $i++) {
	  if( get_theme_mod('sliderpage'.$i,false)) {
		$slider_Arr[] = absint( get_theme_mod('sliderpage'.$i,true));
	  }
	}
?>                
                
<?php if(!empty($slider_Arr)){ ?>
    <div id="slider" class="nivoSlider">
      
        <?php 
        $i=1;
        $slidequery = new WP_query( array( 'post_type' => 'page', 'post__in' => $slider_Arr, 'orderby' => 'post__in' ) );
        while( $slidequery->have_posts() ) : $slidequery->the_post();
        $image = wp_get_attachment_url( get_post_thumbnail_id($post->ID)); ?>
        <?php if(!empty($image)){ ?>
        <img src="<?php echo esc_url( $image ); ?>" title="#slidecaption<?php echo esc_attr( $i ); ?>" alt="<?php echo esc_attr($alt); ?>" />
        <?php }else{ ?>
        <img src="<?php echo esc_url( get_template_directory_uri() ) ; ?>/images/slides/slider-default.jpg" title="#slidecaption<?php echo esc_attr( $i ); ?>" alt="<?php echo esc_attr($alt); ?>" />
        <?php } ?>
        <?php $i++; endwhile; ?>
    </div>   

<?php 
$j=1;
$slidequery->rewind_posts();
while( $slidequery->have_posts() ) : $slidequery->the_post(); ?>                 
    <div id="slidecaption<?php echo esc_attr( $j ); ?>" class="nivo-html-caption">
        <div class="slide_info">
            <h2><?php the_title(); ?></h2>
             <?php the_excerpt(); ?>                    
        </div>
    </div>      
<?php $j++; 
endwhile;
wp_reset_postdata(); ?>  
<div class="clear"></div>        
<?php } ?>
<?php } } ?>
       
        
<?php if ( is_front_page() && ! is_home() ) {
if( $show_servicesbox != ''){ ?>  
    <section id="sectiopn-first">
            	<div class="container">
                    <div class="page-wrapper">                        
                        <?php for($n=4; $n<=6; $n++) { ?>    
                        <?php if( get_theme_mod('services-pagebox'.$n,false)) { ?>          
                            <?php $queryvar = new WP_query('page_id='.absint(get_theme_mod('services-pagebox'.$n,true)) ); ?>				
                                    <?php while( $queryvar->have_posts() ) : $queryvar->the_post(); ?> 
                                    <div class="column-3 <?php if($n % 3 == 3) { echo "last_column"; } ?>">                                    
                                      <?php if(has_post_thumbnail() ) { ?>
                                        <div class="column-3-imgbx"><a href="<?php the_permalink(); ?>"><?php the_post_thumbnail();?></a></div>
                                      <?php } ?>
                                     <div class="column-3-content">
                                     <h5><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>                                     
                                      <?php the_excerpt(); ?>
                                     </div>                                   
                                    </div>
                                    <?php endwhile;
                                   		 wp_reset_postdata(); ?>                                    
                       				<?php } } ?>                                 
                    <div class="clear"></div>  
               </div><!-- .page-wrapper--> 
               
            </div><!-- .container -->
            <div class="toparrow"></div>           
       </section><!-- .sectiopn-first-->                      	      
<?php } ?>

<?php if( $show_fashioner_page != ''){ ?>  
    <section id="section-fashioner">
            	<div class="container">
                    <div class="fashioner-wrap">                            
                        <?php if( get_theme_mod('fashioner_page',false)) { ?>          
                            <?php $queryvar = new WP_query('page_id='.absint(get_theme_mod('fashioner_page',true)) ); ?>				
                                    <?php while( $queryvar->have_posts() ) : $queryvar->the_post(); ?>                                     
                                      <?php if(has_post_thumbnail() ) { ?>
                                        <div class="fashioner-thumb"><a href="<?php the_permalink(); ?>"><?php the_post_thumbnail();?></a></div>
                                      <?php } ?>
                                     <div class="fashioner-content">
                                       <h3><?php the_title(); ?></h2>
                                       <?php the_excerpt(); ?>
                                       <a class="learnmore" href="<?php the_permalink(); ?>">                                      
                                         <?php esc_html_e('Read More','glamour-world'); ?>
                                      </a>                                                                     
                                    </div>                                      
                                    <?php endwhile;
                                   		 wp_reset_postdata(); ?>                                    
                       				<?php } ?>                                 
                    <div class="clear"></div>  
                </div><!-- fashioner-wrap-->            
            </div><!-- container -->
       </section><!-- #section-fashioner -->
<?php } ?>
<?php } ?>