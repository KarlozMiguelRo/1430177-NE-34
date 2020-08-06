<?php
/**
 * This class creates setting page functionality for Product enquiry
 *
 * @package PE/Menu
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

/**
 * Class for PEFree Settings page.
 */
class PE_Admin_Settings_Products {
	/**
	 * The single instance of the class.
	 *
	 * @var pe_instance
	 */
	protected static $instance = null;
	/**
	 * __constructor
	 */
	public function __construct() {
		add_action( 'admin_menu', array( $this, 'pefree_menu_page' ) );
	}
	/**
	 * Main PEFree Instance.
	 *
	 * Ensures only one instance of PEFree is loaded or can be loaded.
	 */
	public static function instance() {
		if ( is_null( self::$instance ) ) {
			self::$instance = new self();
		}
		return self::$instance;
	}
	/**
	 * Adds PFREE settings menu page.
	 *
	 * @return void
	 */
	public function pefree_menu_page() {
		add_menu_page( __( 'Product Enquiry', 'product-enquiry-for-woocommerce' ), __( 'Product Enquiry', 'product-enquiry-for-woocommerce' ), 'manage_options', 'product-enquiry-for-woocommerce', array( $this, 'add_ask_product_settings' ), WDM_PE_PLUGIN_URL . 'assets/admin/img/pep-icon.png', 57 );
	}
	/**
	 * Function to addproduct settings to admin menu this is callback method called on add_menu_page method.
	 */
	public function add_ask_product_settings() {

		wp_enqueue_script( 'wdm_wpi_validation' );
		wp_enqueue_script( 'postbox' );
		?>
		<div class="wrap wdm_leftwrap">
			<div class='wdm-pro-notification'>
			<a href="https://goo.gl/Ez4mZ9" target="_blank"><img src="<?php echo esc_attr( WDM_PE_PLUGIN_URL . 'assets/admin/img/pep.png' ); ?>" width="100%" alt="Product Enquiry Pro"></a>
		</div> <!--wdm-pro-notification ends-->
			<?php
			if ( isset( $_GET['tab'] ) ) {
				$active_tab = $_GET['tab'];
			} else {
				$active_tab = 'form';
			}

			$dashboard_tabs = array(
				'form'             => __( 'Enquiry Settings', 'product-enquiry-for-woocommerce' ),
				'entry'            => __( 'Enquiry Details', 'product-enquiry-for-woocommerce' ),
				'other_extensions' => __( 'Other Extensions', 'product-enquiry-for-woocommerce' ),
			);
			$dashboard_tabs = apply_filters( 'product_enquiry_dashboard_tab_titles', $dashboard_tabs );
			?>
		<h2 class="nav-tab-wrapper">  
			<?php
			foreach ( $dashboard_tabs as $single_tab_slug => $single_tab_title ) {
				?>
			<a href="admin.php?page=product-enquiry-for-woocommerce&tab=<?php echo esc_attr( $single_tab_slug ); ?>" class="nav-tab <?php echo esc_attr( $active_tab === $single_tab_slug ? 'nav-tab-active' : '' ); ?>"><?php echo esc_attr( $single_tab_title ); ?></a>
			<?php } ?>
			<a href="admin.php?page=product-enquiry-for-woocommerce&tab=premium" class="premium nav-tab <?php echo esc_attr( ( 'premium' === $active_tab ) ? 'nav-tab-active' : '' ); ?>"><?php esc_attr_e( 'Premium Version', 'product-enquiry-for-woocommerce' ); ?></a>
		</h2>  
			<?php
			if ( 'entry' === $active_tab ) {
				$form_tab = PE_Admin_Settings_Enquiry_Details_Tab::instance();
				$form_tab->entry_tab_functionality_helper();

			} elseif ( 'other_extensions' === $active_tab ) {
				$form_tab = PE_Admin_Settings_Other_Extensions_Tab::instance();
				$form_tab->other_extensions_tab_functionality_helper();

			} elseif ( 'premium' === $active_tab ) {
				$form_tab = PE_Admin_Settings_Premium_Tab::instance();
				$form_tab->premium_tab_functionality_helper();

			} elseif ( 'form' === $active_tab ) {
				$form_tab = PE_Admin_Settings_Form_Tab::instance();
				$form_tab->form_tab_functionality_helper();
			}
			do_action( 'product_enquiry_tab_content', $active_tab );
			?>
		</div>
		<?php
		PE_Admin_Newsletter_Subcribe::generate_form();
		// add styles for settings page.
		wp_enqueue_style( 'wdm-admin-css', WDM_PE_PLUGIN_URL . 'assets/admin/css/wpi_admin.css', array(), PEFREE_VERSION );
	}
}
