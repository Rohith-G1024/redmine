# config/initializers/cors.rb
# below code allows request from any origin for any resource. modify as
# per requirement

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:4200'
      resource '*', headers: :any, methods: [:get, :post, :patch, :put]
    end
  end
  