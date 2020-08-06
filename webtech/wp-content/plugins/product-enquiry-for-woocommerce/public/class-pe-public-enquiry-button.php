<?php
/**
 * Loads products display
 *
 * @author      WisdmLabs
 * @package     PEFREE/Public
 * @version     3.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/**
 * Class to load button and add enquiry form.
 */
class PE_Public_Enquiry_Button {
	/**
	 * The single instance of the class.
	 *
	 * @var pe_instance
	 */
	protected static $instance = null;
	/**
	 *
	 * Ensures only one instance is loaded or can be loaded.
	 */
	public static function instance() {
		if ( is_null( self::$instance ) ) {
			self::$instance = new self();
		}
		return self::$instance;
	}

	/**
	 * __construct.
	 */
	public function __construct() {
		add_action( 'wp_head', array( $this, 'display_enquiry_button' ) );
		add_action( 'wp_footer', array( $this, 'render_ask_about_product_form' ) );
	}
	/**
	 * Disdplay button function
	 */
	public function display_enquiry_button() {
		$form_init_data = Product_Enquiry_For_Woocommerce::pe_settings();

		if ( isset( $form_init_data['show_after_summary'] ) ) {
			if ( 'after_add_cart' === $form_init_data['show_after_summary'] ) {
				// show ask button after a single product summary add to cart.
				add_action( 'woocommerce_single_product_summary', array( $this, 'render_enquiry_button' ), 30 );
			} elseif ( 'after_product_summary' === $form_init_data['show_after_summary'] ) {
				add_action( 'woocommerce_after_single_product_summary', array( $this, 'render_enquiry_button' ) );
			}
		} else {
			add_action( 'woocommerce_single_product_summary', array( $this, 'render_enquiry_button' ), 30 );
		}
	}
	/**
	 * Function ask about product button.
	 */
	public function render_enquiry_button() {
		$form_data = Product_Enquiry_For_Woocommerce::pe_settings();
		global $is_product;
		// this is used to render enquiry form on product.
		// If it set to false then form will not be rendered.
		$is_product = true;
		?>
		<div id="enquiry">
			<input type="button" name="contact" value="
			<?php
			echo empty( $form_data['custom_label'] ) ?
			esc_attr( __( 'Make an enquiry for this product', 'product-enquiry-for-woocommerce' ) ) : esc_attr( $form_data['custom_label'] );
			?>
			" class="contact wpi-button single_add_to_cart_button button alt" />
		</div>
		<?php
	}
	/**
	 * Ask about product function
	 */
	public function render_ask_about_product_form() {
		if ( ! is_product() ) {
			return;
		}

		$form_data = Product_Enquiry_For_Woocommerce::pe_settings();
		global $post, $is_product;

		$post_author_id = get_post_field( 'post_author', $post->ID );
		$author_data    = get_userdata( $post_author_id );
		$author_email   = $author_data->user_email;
		?>
		<!-- Page styles -->
		<?php
		if ( is_product() ) {
			wp_enqueue_style( 'wdm-juery-css' );
			if ( isset( $form_data['user_custom_css'] ) ) {
				wp_add_inline_style( 'wdm-juery-css', $form_data['user_custom_css'] );
			}
		}
		?>
		<?php
		require WDM_PE_PLUGIN_PATH . 'templates/enquiry-form.php';
		wp_enqueue_script( 'jquery-ui-core' );
		wp_enqueue_script( 'jquery-ui-dialog' );
		wp_enqueue_script( 'wdm-validate' );
		wp_enqueue_script( 'wdm-contact' );
		wp_localize_script(
			'wdm-contact',
			'object_name',
			array(
				'ajaxurl'               => admin_url( 'admin-ajax.php' ),
				'product_name'          => get_the_title(),
				'wdm_customer_name'     => __( 'Name is required.', 'product-enquiry-for-woocommerce' ),
				'wdm_customer_email'    => __( 'Enter valid Email Id.', 'product-enquiry-for-woocommerce' ),
				'wdm_txtphone_required' => __( 'Phone number is required.', 'product-enquiry-for-woocommerce' ),
				'wdm_txtphone_invalid'  => __( 'Enter valid phone number.', 'product-enquiry-for-woocommerce' ),
				'wdm_enquiry'           => __(
					'Enquiry length must be atleast 10 characters.',
					'product-enquiry-for-woocommerce'
				),
			)
		);
	}

}

