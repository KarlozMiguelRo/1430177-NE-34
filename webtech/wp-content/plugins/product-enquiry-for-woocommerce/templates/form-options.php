<?php
/**
 * Email information
 *
 *  @package  PEFree/template
 */

$form_data = Product_Enquiry_For_Woocommerce::pe_settings();
?>
<table class="form-table">
	<tbody>
		<tr valign="top">
			<th scope="row" class="titledesc">
				<label for="custom_label"><?php esc_attr_e( 'Enquiry button label', 'product-enquiry-for-woocommerce' ); ?></label>
			</th>
			<td class="forminp forminp-text">
				<input type="text" class="wdm_wpi_input wdm_wpi_text" name="wdm_form_data[custom_label]" value="<?php echo esc_attr( empty( $form_data['custom_label'] ) ? __( 'Make an enquiry for this product', 'product-enquiry-for-woocommerce' ) : $form_data['custom_label'] ); ?>" id="custom_label"s />
				<span class="description"><?php esc_attr_e( 'Add custom label for enquiry button.', 'product-enquiry-for-woocommerce' ); ?></span>
			</td>
		</tr>
		<tr valign="top">
			<th scope="row" class="titledesc">
				<label><?php esc_attr_e( 'Enquiry button location', 'product-enquiry-for-woocommerce' ); ?></label>
			</th>
			<td class="forminp forminp-text">
				<input type='radio' id="show_after_product_summary" class='wdm_wpi_input wdm_wpi_checkbox input-without-tip' value='after_add_cart' name='wdm_form_data[show_after_summary]' <?php echo esc_attr( ( ( $form_data['show_after_summary'] ) === 'after_add_cart' ) ? ' checked="checked" ' : '' ); ?> />
				<label for="show_after_product_summary"><?php esc_attr_e( ' After add to cart button', 'product-enquiry-for-woocommerce' ); ?></label>
				<br />
				<input type='radio' id="show_after_cart" class='wdm_wpi_input wdm_wpi_checkbox input-without-tip' value='after_product_summary' name='wdm_form_data[show_after_summary]' 
				<?php
				echo esc_attr(
					( (
					'after_product_summary' === $form_data['show_after_summary'] ) ? ' checked="checked" ' : '' )
				);
				?>
					/>
				<label for="show_after_cart"><?php esc_attr_e( ' After single product summary ', 'product-enquiry-for-woocommerce' ); ?></label>
			</td>
		</tr>
		<tr valign="top">
			<th scope="row" class="titledesc">
				<label for="enable_send_mail_copy"><?php esc_attr_e( 'Send me a copy', 'product-enquiry-for-woocommerce' ); ?></label>
			</th>
			<td class="forminp forminp-text">
				<input type="checkbox" id="enable_send_mail_copy" class="wdm_wpi_input wdm_wpi_checkbox" name="wdm_form_data[enable_send_mail_copy]" value="1" <?php echo esc_attr( ( isset( $form_data['enable_send_mail_copy'] ) ? 'checked' : '' ) ); ?> id="enable_send_mail_copy" />
				<span class="description"><?php esc_attr_e( 'This will display \'send me a copy\' checkbox on enquiry form to send an email copy to the customer.', 'product-enquiry-for-woocommerce' ); ?></span>
			</td>
		</tr>
		<tr valign="top">
			<th scope="row" class="titledesc">
				<label for="enable_telephone_no_txtbox"><?php esc_attr_e( "Display 'Telephone Number Field'", 'product-enquiry-for-woocommerce' ); ?></label>
			</th>
			<td class="forminp forminp-text">
				<input type="checkbox" class="wdm_wpi_input wdm_wpi_checkbox" name="wdm_form_data[enable_telephone_no]" value="1" <?php echo ( isset( $form_data['enable_telephone_no'] ) ? 'checked' : '' ); ?> id="enable_telephone_no_txtbox" />
				<span class="description"><?php esc_attr_e( 'Displays telephone number field on the enquiry form.', 'product-enquiry-for-woocommerce' ); ?></span>
			</td>
		</tr>
		<tr valign="top" style="<?php echo esc_attr( isset( $form_data['enable_telephone_no'] ) ? '' : 'display:none;' ); ?>">
			<th scope="row" class="titledesc">
				<label for="make_phone_mandatory_chkbox"><?php esc_attr_e( 'Make \'Telephone Number\' field mandatory', 'product-enquiry-for-woocommerce' ); ?></label>
			</th>
			<td class="forminp forminp-text">
				<input type="checkbox" class="wdm_wpi_input wdm_wpi_checkbox" name="wdm_form_data[make_phone_mandatory]" value="1" <?php echo esc_attr( ( isset( $form_data['make_phone_mandatory'] ) ? 'checked' : '' ) ); ?> id="make_phone_mandatory_chkbox" />
				<span class="description"><?php esc_attr_e( 'Make telephone number field mandatory while submitting the form.', 'product-enquiry-for-woocommerce' ); ?></span>
			</td>
		</tr>
		<tr valign="top">
			<th scope="row" class="titledesc">
				<label for="enable_for_out_stock">
				<?php esc_attr_e( 'Show enquiry button only when product is out of stock', 'product-enquiry-for-woocommerce' ); ?></label>
			</th>
			<td class="forminp forminp-text">
				<input type="checkbox" disabled class="wdm_wpi_input wdm_wpi_checkbox" value="1" id="enable_for_out_stock" />
				<span title='Pro Feature' class='pew_pro_txt'>[Available in PRO]</span>
				<span class="description"><?php esc_attr_e( 'Show enquiry button only when product is out of stock.', 'product-enquiry-for-woocommerce' ); ?></span>
			</td>
		</tr>
	</tbody>
</table>
