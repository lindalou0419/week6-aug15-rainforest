class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    # redirects to the product page when it submitted
    if @review.save
      flash[:notice] = "New review added!"
      redirect_to product_url(params[:product_id])
    else
      flash[:notice] = "There was an error."
      render 'products/show'
    end
  end

  def edit
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  def update
    @review = Review.find(params[:id])
    @review.comment = params[:review][:comment]

    if @review.save
      flash[:notice] = "Your review has been updated!"
      redirect_to "/products/#{params[:product_id]}"
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "You've successfully deleted the review!"
    redirect_to "/products/#{params[:product_id]}"
  end
end
