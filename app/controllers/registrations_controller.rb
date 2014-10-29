class Users::RegistrationsController < Devise::RegistrationsController
  # before_filter :configure_sign_up_params, only: [:create]
  # before_filter :configure_account_update_params, only: [:update]

  def profile
    @user = User.find params[:id]
  end

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  def edit
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "Your account has been updated successfully." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.error, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  private

    def sign_up_params
      params.require(:user).permit(:username, :first_name, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:user).permit(:username, :first_name, :email, :password, :password_confirmation, :current_password, :profile_pic)
    end


  # You can put the params you want to permit in the empty array.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # You can put the params you want to permit in the empty array.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
