class UsersController < ApplicationController
  before_action :authenticate_user!, except: :new

  def new
    @user = User.new
  end
end
