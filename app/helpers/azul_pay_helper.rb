module AzulPayHelper

  def azul_pay_button(order_number, currency, amount, itbis)

    #form for Pay
    "<form action=\"http://urldelpaymentpage/\" method=\"post\">
      <input type=\"hidden\" id=\"MerchantId\" name=\"MerchantId\" value=\"99999994\" >
      <input type=\"hidden\" id=\"MerchantName\" name=\"MerchantName\" value=\"MerchantName\" >
      <input type=\"hidden\" id=\"MerchantType\" name=\"MerchantType\" value=\"MerchantType\" >
      <input type=\"hidden\" id=\"CurrencyCode\" name=\"CurrencyCode\" value=\"$\" >
      <input type=\"hidden\" id=\"itbis\" name=\"itbis\" value=\"XXX\" >
      <input type=\"hidden\" id=\"OrderNumber\" name=\"OrderNumber\" value=\"88887771232\" >
      <input type=\"hidden\" id=\"Amount\" name=\"Amount\" value=\"257597\" >
      <input type=\"hidden\" id=\"ApprovedUrl\" name=\"ApprovedUrl\" value=\"http://urlderegreso/?ApprovedUrl\" >
      <input type=\"hidden\" id=\"DeclinedUrl\" name=\"DeclinedUrl\" value=\"http://urlderegreso/?DeclinedUrl\" >
      <input type=\"hidden\" id=\"CancelUrl\" name=\"CancelUrl\" value=\"http://urlderegreso/?CancelUrl\" >
      <input type=\"hidden\" id=\"ResponsePostUrl\" name=\"ResponsePostUrl\" value=\" urlderegreso/?PostURL\" >
      <input type=\"hidden\" id=\"UseCustomField1\" name=\"UseCustomField1\" value=\"1\" >
      <input type=\"hidden\" id=\"CustomField1Label\" name=\"CustomField1Label\" value=\"Custom1\" >
      <input type=\"hidden\" id=\"CustomField1Value\" name=\"CustomField1Value\" value=\"Value1\" >
      <input type=\"hidden\" id=\"UseCustomField2\" name=\"UseCustomField2\" value=\"1\" >
      <input type=\"hidden\" id=\"CustomField2Label\" name=\"CustomField2Label\" value=\"Custom2\" >
      <input type=\"hidden\" id=\"CustomField2Value\" name=\"CustomField2Value\" value=\"Value2\" >
      <input type=\"hidden\" id=\"AuthHash\" name=\"AuthHash\" value=\".......\" >
      <input type=\"submit\" value=\"Pay with Azul Payment Page\">
    </form>"

  end
end
