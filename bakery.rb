require 'sinatra'
require 'httparty'
require 'colorize'
require './cookie.rb'
require './cake.rb'
require './muffin.rb'

#Cookies
choc_chip = Cookie.new('Chocolate Chip', 'This is a chocolate chip cookie', 3, '/images/choco_cookie.jpg')
sugar = Cookie.new('Sugar Cookie', 'This is a sugar cookie', 3, '/images/sugar_cookie.jpg')

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
    @cookie_rendered = [choc_chip, sugar]
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