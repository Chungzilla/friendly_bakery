class Cake
    attr_accessor :name, :description, :price, :image, :artist

    def initialize(name, description, price, image, artist)
        @name = name
        @description = description
        @price = price
        @image = image
        @artist = artist
    end
end