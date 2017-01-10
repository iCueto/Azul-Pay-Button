class AzulPayButtonGenerator < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__)))

  def copy_initializer_file
    copy_file "azul_config.yml", "config/azul_config.yml"
    copy_file "azul_pay_button_initializer.rb", "config/initializers/azul_pay_button.rb"

    puts "Install complete! Now take a moment to setup the file config/azul_config.yml"

  end
end
