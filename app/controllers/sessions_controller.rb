class SessionsController < Devise::SessionsController

  # POST /resource/sign_in
  def create
     # Retrieve your user
    self.resource = User.where( :email => params[:user][:email] ).first
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    respond_with resource, :location => after_sign_in_path_for(resource)
  end

end