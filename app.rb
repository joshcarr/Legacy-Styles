require 'rubygems'
require 'sinatra'

get "/" do
  redirect "/index", 301
end


get '/:view' do
  #set style so appropraite stylesheet is loaded
  @style = params[:style] || "nil"
  @color = params[:color] || "nil"
  # assign the view based on our url
  @view = params[:view] ||= "index"
  layout = "layouts/layout"
  # render our view, with our layout 
  erb(@view.to_sym, :layout => layout.to_sym)
end
