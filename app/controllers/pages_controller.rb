class PagesController < ApplicationController

   #remove this before deploying to production
   before_filter :authenticate

  def home
    if params[:choice] == 'yes'
      cookies.permanent[:user_choice] = 'yes'
    end
  end

  def webcast
    @message = Message.new
    if cookies[:user_choice] == 'yes'
      redirect_to home_path
    end  
  end
  
  def preregistration
  end

  def evaluation
    @feedback = Feedback.new
  end

  protected

    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "belfast"
     end
    end

end