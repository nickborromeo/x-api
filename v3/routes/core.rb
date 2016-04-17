module V3
  module Routes
    class Core < Sinatra::Application
      use Bugsnag::Rack

      configure do
        set :root, "./v3"
        enable :raise_errors
      end

      configure :development, :production do
        set :tracks_path, "."
      end

      configure :test do
        set :tracks_path, "./test/fixtures"
      end

      before do
        content_type 'application/json', charset: 'utf-8'
      end
    end
  end
end
