require 'sinatra'

def show(page)
  # Grab Page
  if File.exists? "views/pages/#{page}.erb"
    # @content = File.new("pages/#{page}.html").readlines
    erb :"pages/#{page}"
  else
    # @content = File.new("pages/404.html").readlines
    erb :"pages/404"
  end
end

get '/' do
  show "index"
end
get '/:page' do
  show params[:page]
end
