class UserMailer < ApplicationMailer
  def daily_products(user, products)
    @user = user
    @products = products
    mail(to: @user.email, subject: 'Productos destacados')
  end
end
