# frozen_string_literal: true

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,
                                 browser: :remote,
                                 desired_capabilities: :chrome,
                                 url: 'http://selenium_chrome:4444/wd/hub')
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: {
      args: %w[headless enable-features=NetworkService,NetworkServiceInProcess]
    }
  )

  Capybara::Selenium::Driver.new app,
                                 browser: :remote,
                                 desired_capabilities: capabilities,
                                 url: 'http://selenium_chrome:4444/wd/hub'
end
