class UsermailerMailer < ApplicationMailer

default from: "itsthenewsforum@gmail.com"

def usermailer(object)
@object=object	
mail(to:@object.Email, subject:"Welcome to The News Forum.")
end

end
