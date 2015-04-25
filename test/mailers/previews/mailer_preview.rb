# Preview all emails at http://localhost:3000/rails/mailers/mailer
class MailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/mailer/received
  def received
    Mailer.received
  end

  # Preview this email at http://localhost:3000/rails/mailers/mailer/shipped
  def shipped
    Mailer.shipped
  end

end
