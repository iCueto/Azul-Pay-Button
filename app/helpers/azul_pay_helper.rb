require 'digest'

module AzulPayHelper

  def azul_pay_button(order_number, currency, amount, itbis)

    itbis = '%.2f' % itbis.to_f.round(2)
    amount = '%.2f' % amount.to_f.round(2)

    amount = '%.2f' %  (amount.to_f + itbis.to_f).round(2)

    auth_hash =  "#{AzulPayButton.config.merchant_id}#{AzulPayButton.config.merchant_name}#{AzulPayButton.config.merchant_type}#{currency}#{order_number}#{amount}#{AzulPayButton.config.approved_url}#{AzulPayButton.config.declined_url}#{AzulPayButton.config.cancel_url}#{AzulPayButton.config.response_post_url}#{AzulPayButton.config.custom_field_1}#{AzulPayButton.config.custom_field_1_label}#{AzulPayButton.config.custom_field_1_value}#{AzulPayButton.config.custom_field_2}#{AzulPayButton.config.custom_field_2_label}#{AzulPayButton.config.custom_field_2_value}#{AzulPayButton.config.auth_key}"

    #form for Pay
    "<form action=\"#{AzulPayButton.config.url_azul}\" method=\"post\">
      <input type=\"hidden\" id=\"MerchantId\" name=\"MerchantId\" value=\"#{AzulPayButton.config.merchant_id}\" >
      <input type=\"hidden\" id=\"MerchantName\" name=\"MerchantName\" value=\"#{AzulPayButton.config.merchant_name}\" >
      <input type=\"hidden\" id=\"MerchantType\" name=\"MerchantType\" value=\"#{AzulPayButton.config.merchant_type}\" >
      <input type=\"hidden\" id=\"CurrencyCode\" name=\"CurrencyCode\" value=\"#{currency}\" >
      <input type=\"hidden\" id=\"itbis\" name=\"itbis\" value=\"#{itbis.split('.').join}\" >
      <input type=\"hidden\" id=\"OrderNumber\" name=\"OrderNumber\" value=\"#{order_number}\" >
      <input type=\"hidden\" id=\"Amount\" name=\"Amount\" value=\"#{amount.split('.').join}\" >
      <input type=\"hidden\" id=\"ApprovedUrl\" name=\"ApprovedUrl\" value=\"#{AzulPayButton.config.approved_url}\" >
      <input type=\"hidden\" id=\"DeclinedUrl\" name=\"DeclinedUrl\" value=\"#{AzulPayButton.config.declined_url}\" >
      <input type=\"hidden\" id=\"CancelUrl\" name=\"CancelUrl\" value=\"#{AzulPayButton.config.cancel_url}\" >
      <input type=\"hidden\" id=\"ResponsePostUrl\" name=\"ResponsePostUrl\" value=\"#{AzulPayButton.config.response_post_url}\" >
      <input type=\"hidden\" id=\"UseCustomField1\" name=\"UseCustomField1\" value=\"#{AzulPayButton.config.custom_field_1}\" >
      <input type=\"hidden\" id=\"CustomField1Label\" name=\"CustomField1Label\" value=\"#{AzulPayButton.config.custom_field_1_label}\" >
      <input type=\"hidden\" id=\"CustomField1Value\" name=\"CustomField1Value\" value=\"#{AzulPayButton.config.custom_field_1_value}\" >
      <input type=\"hidden\" id=\"UseCustomField2\" name=\"UseCustomField2\" value=\"#{AzulPayButton.config.custom_field_2}\" >
      <input type=\"hidden\" id=\"CustomField2Label\" name=\"CustomField2Label\" value=\"#{AzulPayButton.config.custom_field_2_label}\" >
      <input type=\"hidden\" id=\"CustomField2Value\" name=\"CustomField2Value\" value=\"#{AzulPayButton.config.custom_field_2_value}\" >
      <input type=\"hidden\" id=\"AuthHash\" name=\"AuthHash\" value=\"#{Digest::SHA512.hexdigest auth_hash }\" >
      <input type=\"submit\" value=\"Pay with Azul Payment Page\">
    </form>".html_safe

  end
end
