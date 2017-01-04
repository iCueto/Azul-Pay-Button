CONFIG = Rails.application.config_for :azul_config

AzulPayButton.configure do |config|

  config.url_azul = CONFIG['url_azul'] # url to send the transation

  # It's very necessary

  config.auth_key = CONFIG['auth_key'] # authentication key

  config.merchant_id = CONFIG['merchant_id']
  config.merchant_type = CONFIG['merchant_type']
  config.merchant_name = CONFIG['merchant_name']

  # Url's Transation
  config.approved_url = CONFIG['approved_url'] # If the transation was approved
  config.declined_url = CONFIG['declined_url'] # If the transation was declined
  config.cancel_url = CONFIG['cancel_url'] # If the transation was cancelled

  config.response_post_url = CONFIG['response_post_url'] # Optional. Url where will send response parameters

  # Optionals
  config.custom_field_1 = CONFIG['custom_field_1']
  config.custom_field_1_label = CONFIG['custom_field_1_label']
  config.custom_field_1_value = CONFIG['custom_field_1_value']

  config.custom_field_2 = CONFIG['custom_field_2']
  config.custom_field_2_label = CONFIG['custom_field_2_label']
  config.custom_field_2_value = CONFIG['custom_field_2_value']

end
