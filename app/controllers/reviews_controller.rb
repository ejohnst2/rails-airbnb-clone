class ReviewsController < ApplicationController
def create
    @bunker = Bunker.find(params[:bunker_id])
    @review = Review.new(review_params)
    @review.bunker = @bunker
    if @review.save
      respond_to do |format|
        format.html { bunker_path(@bunker) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'bunkers/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end



