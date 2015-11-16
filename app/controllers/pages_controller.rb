class PagesController < ApplicationController

   #remove this before deploying to production
   before_filter :authenticate

  def home
  end

  def live
    @message = Message.new
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