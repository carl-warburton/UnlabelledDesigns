class ProductsController < ApplicationController

  def index
    @product_items = Product.all
  end

  def illustrated
    @illustrated_product_items = Product.illustrated
  end

  def new
    @product_item = Product.new
    5.times {@product_item.sizes.build}
  end

  def create
    @product_item = Product.new(product_params)
    respond_to do |format|
      if @product_item.save
        format.html { redirect_to products_path, notice: 'Your product item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @product_item = Product.find(params[:id])
  end

  def update
    @product_item = Product.find(params[:id])

    respond_to do |format|
      if @product_item.update(product_params)
        format.html { redirect_to products_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @product_item = Product.find(params[:id])
  end

  def destroy
    # Perform the lookup
    @product_item = Product.find(params[:id])

    # Destroy/delete the record
    @product_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Record was removed.' }
    end
  end

  ######################
  private
  ######################

  def product_params
    params.require(:product).permit(:title,
                                    :description,
                                    :front_image,
                                    :back_image,
                                    sizes_attributes: [:name, :quantity])

  end


end