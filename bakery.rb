require 'sinatra'
require 'httparty'
require 'colorize'
require './cookie.rb'
require './cake.rb'
require './muffin.rb'

#Cookies
choc_chip = Cookie.new(
    'Bocolate Bip Bookies', 
    "Cardi B's favorite... Aeeeeeeeowwwwwwwwww!", 
    3, 
    '/images/choco_cookie.jpg', 
    '/images/cardib.jpg'
    )

macadamia = Cookie.new('Craig Mack-adamia Nut Cookies', 'Here comes some brand new flava in ya mouth!', 3, '/images/macadamia_cookie.jpg', '/images/craig_mack.jpg')

#Cakes
lemon_loaf = Cake.new('Vanilla Ice, Ice Lemon Loaf', "This cake is smothered in icing. One would say we waxed a loaf like a candle. Mr. Ice would be proud!", 7, '/images/ice_lemon_loaf.jpg', '/images/vanilla_ice.jpg')

keylime = Cake.new('Lil Dicky-Lime Pie', "You don't have to wait for a Freaky Friday just experience the magic in this sweet treat!", 7, '/images/keylime.jpg', '/images/lil_dicky.jpg')

#Muffins
banana_muffin = Muffin.new('Aubrey Graham Cracker Muffin', "October's Very Own.... muffin.", 7, '/images/grahams.jpg', '/images/drake.jpg')

blueberry_muffin = Muffin.new('The Blueberryprint Muffin', "An Amerian classic.'Nuff said!", 8, '/images/blueberry.jpg', '/images/jay_z.jpg')





get '/' do

    erb :index, :layout => false
end

get '/cookies' do
    @cookie_rendered = [choc_chip, macadamia]
    erb :cookie
end

get '/cakes' do
    @cake_rendered = [lemon_loaf, keylime]

    erb :cake
end

get '/muffins' do
    @muffin_rendered = [banana_muffin, blueberry_muffin]

    erb :muffin
end