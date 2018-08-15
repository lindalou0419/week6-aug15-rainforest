class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]
  end

  def edit
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  def update
  end

  def destroy
  end
end
