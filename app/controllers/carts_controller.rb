class CartsController < ApplicationController
    
    def show
        @cartitems = CartItem.all

    end 
end



 
