class FeedbacksController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy


  def create
    @feedback = current_user.feedbacks.build(feedback_params)
    if @feedback.save
      flash[:success] = "Feedback created!"
      redirect_to home_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @feedback.destroy
    redirect_to home_path
  end

  private

    def feedback_params
      params.require(:feedback).permit(:strengths, :weaknesses, :recommendations, :rating)
    end

    def correct_user
      @feedback = current_user.feedbacks.where(id: params[:id]).first
      redirect_to root_url if @feedback.nil?
    end
end