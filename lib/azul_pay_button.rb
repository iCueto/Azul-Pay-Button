require "azul_pay_button/version"

module AzulPayButton
  class << self
    attr_accessor :config
  end

  def self.configure
    self.config ||= Config.new
    yield(config)
  end

  class Config

    attr_accessor :url_azul # url to send the transation

    # It's very necessary

    attr_accessor :auth_key # authentication key

    attr_accessor :merchant_id
    attr_accessor :merchant_type
    attr_accessor :merchant_name

    # Url's Transation
    attr_accessor :approved_url # If the transation was approved
    attr_accessor :declined_url # If the transation was declined
    attr_accessor :cancel_url # If the transation was cancelled

    attr_accessor :response_post_url # Optional. Url where will send response parameters

    # Optionals

    attr_accessor :custom_field_1
    attr_accessor :custom_field_1_label
    attr_accessor :custom_field_1_value

    attr_accessor :custom_field_2
    attr_accessor :custom_field_2_label
    attr_accessor :custom_field_2_value

    def initialize
      @url_azul = "https://pruebas.azul.com.do/PaymentPage/"

      @auth_key = ""
      @merchant_id = ""
      @merchant_type = ""
      @merchant_name = ""

      @approved_url = ""
      @declined_url = ""
      @cancel_url = ""
      @response_post_url = ""

      @custom_field_1 = ""
      @custom_field_1_label = ""
      @custom_field_1_value = ""

      @custom_field_1 = ""
      @custom_field_1_label = ""
      @custom_field_1_value = ""

    end
  end

  class Engine < ::Rails::Engine

  end
end
