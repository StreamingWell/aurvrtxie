class FeedbackMailer < ActionMailer::Base
  default :from => "noreply@orkambi.com"
  default :to => "branden.mittra@streamingwell.com"
  # default :bcc => "branden.mittra@streamingwell.com"

  def new_feedback(feedback)
    @feedback = feedback
    mail(:subject => "Evaluation: Orkambi UK")
  end

end