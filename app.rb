#!/usr/bin/env ruby

require 'sinatra'
require_relative 'config/database'
require_relative 'models/restaurant'
require_relative 'models/menu_item'

get '/' do
    @restaurants = Restaurant.all
    erb :index
end

get '/restaurants/:id' do
   @restaurant = Restaurant.find(params['id'])
   @menu_items = MenuItem.where(restaurant_id: params['id'])
   erb :'restaurants/show'
end
