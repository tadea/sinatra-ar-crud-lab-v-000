
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/posts/new' do #loads new form
    erb :new
  end


  post '/posts' do
    post = Post.create(params)
    redirect to '/posts'  #create a post
  end

  get '/posts' do
    @posts = Post.all
    erb :index       #loads show page
  end
end
