require 'sinatra'
require 'httparty'
require 'colorize'
require './cookie.rb'
require './cake.rb'
require './muffin.rb'

#Cookies
choc_chip = Cookie.new(
    'Bocolate Bip Bookie', 
    "Cardi B's favorite... Aeeeeeeeowwwwwwwwww!", 
    3, 
    '/images/choco_cookie.jpg', 
    '/images/cardib.jpg'
    )

macadamia = Cookie.new('Craig Mack-adamia Nut Cookies', 'Here comes some brand new flava in mouth!', 3, '/images/macadamia_cookie.jpg', '/images/craig_mack.jpg')

#Cakes
black_cake = Cake.new('Black Cake', "This is a cake that's black", 7, '/images/black_cake.jpg')

carrot_cake = Cake.new('Carrot Cake', 'This cake has carrots in it', 7, '/images/carrot_cake.jpg')

#Muffins
banana_muffin = Muffin.new('Blueberry Muffin', "This muffin might have blueberries in it. Maaaaaaaybe. If you're allergic to blueberries, I wouldn't eat this, just in case!", 5, '/images/banana_muffin.jpeg')

blueberry_muffin = Muffin.new('Blueberry Muffin', "This muffin might have blueberries in it. Maaaaaaaybe. If you're allergic to blueberries, I wouldn't eat this, just in case!", 5, '/images/blue_muffin.jpg')





get '/' do

    erb :index, :layout => false
end

get '/cookies' do
    @cookie_rendered = [choc_chip, macadamia]
    erb :cookie
end

get '/cakes' do
    @cake_rendered = [black_cake, carrot_cake]

    erb :cake
end

get '/muffins' do
    @muffin_rendered = [banana_muffin, blueberry_muffin]

    erb :muffin
end