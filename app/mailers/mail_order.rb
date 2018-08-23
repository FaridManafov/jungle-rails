class MailOrder < ApplicationMailer
  default from: 'example@example.com'

  def receipt_email(order)
    @order = order
    @url  = 'http://localhost:3000'
    mail(to: @order.email, subject: 'Your receipt: ')
  end
  
end