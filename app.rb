require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')

get('/') do

  erb(:index)
end

get('/display') do
  @width = params.fetch('width')
  @height = params.fetch('height')
  @length = params.fetch('length')
  @my_Parcel = Parcel.new(@width.to_i, @height.to_i, @length.to_i).cost_to_ship()

  erb(:display)
end
