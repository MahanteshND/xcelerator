class RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.new(signup_params)
    if @user.save
      flash[:notice] = "You signed up successfully"
    else
      flash[:notice] = "Form is invalid"
    end
    render "new"
  end

  private

  def signup_params
    params.require(:user).permit(:full_name,
                                        :age,
                                        :email,
                                        :password,
                                        :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:full_name,
                                 :age,
                                 :email,
                                 :password,
                                 :password_confirmation,
                                 :current_password)
  end
end