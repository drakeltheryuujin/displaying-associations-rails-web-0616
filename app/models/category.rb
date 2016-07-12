class Category < ActiveRecord::Base

  has_many :posts

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
  
  def create
    @category.create!(params[:name])
  end

  def new
    @category=Category.new
  end

end
