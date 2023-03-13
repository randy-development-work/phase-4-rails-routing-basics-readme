class CheesesController < ApplicationController
    def index
        cheeses = Cheese.all
        render json: cheeses
    end

    def order
        ch = Cheese.all.order("price desc")
        render json: ch
    end
end
