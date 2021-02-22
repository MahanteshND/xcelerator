class TopicOfInterestsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    @topic_of_interests = current_user.present? ? current_user.topic_of_interests : TopicOfInterest.all.limit(20)
  end

  def new
    @topic = TopicOfInterest.new
  end

  def create
    if current_user.topic_of_interests.create(topic_params)
      flash[:notice] = "You signed up successfully"
    else
      flash[:notice] = "Form is invalid"
    end
    redirect_to root_path
  end

  private

  def topic_params
    params.require(:topic_of_interest).permit(:topic_name, :short_desc, :user_id)
  end

end

