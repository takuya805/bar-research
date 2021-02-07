class UserContactMailer < ApplicationMailer
  def user_mail(user_contact)
    @contact = user_contact
    mail(to: Settings.gmail[:user_name], subject: 'お問い合わせ内容')
  end

  def owner_mail(owner_contact)
    @contact = owner_contact
    mail(to: Settings.gmail[:user_name], subject: 'お問い合わせ内容')
  end
end
