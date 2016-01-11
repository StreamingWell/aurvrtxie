class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@orkambi.com"
  default :to => "branden.mittra@streamingwell.com"
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