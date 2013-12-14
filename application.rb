require 'sinatra'
require 'sinatra/assetpack'

# get '/hi' do
#   "Hello World!"
# end

module Site
  class Application < Sinatra::Application
    set :root, File.join(File.dirname(__FILE__), 'app') #set app root
    
    register Sinatra::AssetPack

    assets {
      serve '/javascripts', from: 'assets/javascripts'        # Default
      serve '/stylesheets', from: 'assets/stylesheets'       # Default
      serve '/images',      from: 'assets/images'    # Default

      # The second parameter defines where the compressed version will be served.
      # (Note: that parameter is optional, AssetPack will figure it out.)
      js :app, '/javascripts/app.js', [
        '/javascripts/jquery.js',
        '/javascripts/bootstrap.js',
        '/javascripts/base.js'
      ]

      css :application, '/stylesheets/application.css', [
        '/stylesheets/bootstrap.css',
        '/stylesheets/base.css'
      ]

      js_compression  :jsmin    # :jsmin | :yui | :closure | :uglify
      css_compression :simple   # :simple | :sass | :yui | :sqwish
    }

    helpers do
      def greetings_for_people
        {"Dev" => "howdy", "Zack" => "konichiwa", "Fah" => "sawadi"}
      end
    end

    get '/' do
      @my_name = ["Dev", "Zack", "Fah"].sample

      #greetings_for_people = {"Dev" => "howdy", "Zack" => "konichiwa", "Fah" => "sawadi"}

      @greeting = greetings_for_people[@my_name]

      #@greeting = ["howdy", "konichiwa", "sawadi"]

        #if @my_name == "Dev"
         # @greeting = "howdy"
        #elsif @my_name == "Zack"
         # @greeting = "konichiwa"
        #elsif @my_name == "Fah"
         # @greeting = "sawadi"

        #end

      erb :index

    end

    get '/contact' do 
      erb :contact
    end
  end
end