class UserMailer < ApplicationMailer

    default from: 'blah@blah.com'

    def welcome_email(user)
        @user = user
        @url = 'boo@boo.com'
        mail(to)
    end

end
