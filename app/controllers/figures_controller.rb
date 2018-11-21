

class FiguresController < ApplicationController
  get '/figures' do
    @figures = Figure.all
    erb :"../views/figures/index"
  end

  get'/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :"../views/figures/new"
  end

  get '/figures/:id' do
    @figure = Figure.find(param[:id])
     erb :show
  end

  get 'figures/:id/edit' do
    @figure = Figure.find(param[:id])
    erb  :edit
  end

  post '/figures' do
    binding.pry
    @figure = Figure.create(params[:figure])
    @landmark = Landmark.create(params[:landmark])
    @landmark.figure_id = @figure.id
    @title = Title.create(params[:title])
    redirect "/figures/#{@figure.id}"
  end

  patch 'figures/:id' do
    @figure = Figure.update(params[:figure])
    redirect "/figures/#{@figure.id}"
  end

end
