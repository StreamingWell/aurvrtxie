class NotificationsMailer < ActionMailer::Base
  default :from => "orkambiwebcast@vrtx.com"
  default :to => "orkambiwebcast@vrtx.com"
  default :bcc => "branden.mittra@streamingwell.com"

  def new_message(message, user)
    @user = user
    @message = message
    mail(:subject => "Question from Orkambi IE")
  end

  def new_feedback(feedback, user)
    @user = user
    @feedback = feedback
    mail(:subject => "Evaluation: Orkambi IE")
  end
end