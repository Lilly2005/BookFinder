require './config/environment'
require './app/models/model'


class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
   erb :index
  end
  
  get'/results' do
    erb :results
  end
  
 post '/results' do 
   @query = params[:query]
    @client=Goodreads.new(api_key:"d1E4YHGem7JWF750ztY2w")
    
   erb :results 
 end
   

end