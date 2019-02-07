class LandmarksController < ApplicationController

  get '/landmarks' do
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks' do
    binding.pry
    @landmark = Landmark.create(name: params[:landmark][:name], year_completedr: params[:landmark][:year_completed])
  end

  get '/landmarks/:id' do

  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

end
