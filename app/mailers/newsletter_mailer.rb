class NewsletterMailer < ActionMailer::Base
  default from: "samantha.grimm@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.weekly.subject
  #
  def weekly(email, newsletter)
    @greeting = "Hi"
    @newsletter = newsletter
    mail to: email, subject: "Sam's Weekly"
  end
end
