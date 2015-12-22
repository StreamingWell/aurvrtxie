class SessionsController < Devise::SessionsController

  # POST /resource/sign_in
  def create
     # Retrieve your user
     if params[:user][:email].present?
      self.resource = User.where( :email => params[:user][:email] ).first
      set_flash_message(:notice, :signed_in) if is_navigational_format?
      sign_in(resource_name, resource)
      respond_with resource, :location => after_sign_in_path_for(resource)
    else
    	flash[:alert] = "Email can't be blank"
      redirect_to :back
    end  
  end

end