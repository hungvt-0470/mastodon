Rails.application.config.force_ssl = false
Rails.application.config.ssl_options = { redirect: false }
Rails.application.config.middleware.delete ActionDispatch::SSL if defined?(ActionDispatch::SSL)
Rails.application.config.middleware.delete Rack::SSL if defined?(Rack::SSL)
Rails.application.config.action_mailer.default_url_options = { host: '35.240.183.235', port: 3000, protocol: 'http', trailing_slash: false }
Rails.application.routes.default_url_options[:protocol] = 'http'
Rails.application.config.action_mailer.asset_host = 'http://35.240.183.235:3000'
