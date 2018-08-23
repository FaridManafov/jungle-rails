class CategoriesController < Admin::AdminController

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end

end

class Admin::CategoriesController < ApplicationController

  def index
    @categories = Category.order(id: :desc ).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category Created!'
    else
      render :new
    end

  end

  def category_params
    params.require(:category).permit(:name)
  end
  
end