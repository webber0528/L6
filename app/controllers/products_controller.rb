class ProductsController < ApplicationController
    
  def index
    @products = Product.all
  end
  
  def new
    @products = Product.new
    
  end
  
  def create
    
    @products =  Product.new(name: params[:product][:name],price: params[:product][:price])

    if @products.save
      flash[:notice] = '1レコード追加しました'
      redirect_to root_path
    else
      render new_product_path
    end
    
  end
  
  def destroy
    @products = Product.find(params[:id])
    @products.destroy
    flash[:notice] = '1レコード削除しました'
    redirect_to root_path
  end
  

 
  
end
