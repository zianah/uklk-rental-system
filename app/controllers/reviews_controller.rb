class ReviewsController < ApplicationController
	before_action :set_rental
	before_action :authenticate_user!, only:[:create, :destroy]
	
	def create
		@review = @rental.reviews.new(review_params)
		@review.user = current_user
		@review.save
		redirect_back(fallback_location: root_path)
	end

	def destroy
		@review = @rental.reviews.find(params[:id])
		@review_id = @review.id
		@review.destroy
	end

	private
	def review_params
		params.require(:review).permit(:message, :score, :rental_id)
	end
	def set_rental
		@rental = Rental.find(params[:rental_id])
	end
end
