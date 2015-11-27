class AdminMailer < ActionMailer::Base
  default :from => "branden.mittra@streamingwell.com"
  default :to => "branden.mittra@streamingwell.com"
  # default :bcc => "branden.mittra@streamingwell.com"

  def registration_notification(user)
    @user = user
    mail(subject: "New Registration on Orkambi IE")
  end

end
