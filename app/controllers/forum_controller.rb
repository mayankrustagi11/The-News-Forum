class ForumController < ApplicationController

def show
@object = forum.all
end

def new

end

def create
@object=forum.new(object_params)
@object.save
redirect_to @object
end

def login


end

def upload
end

def forgetpassword

end

private
def object_params
params.require(:object).permit(:Username, :Password, :CPassword, :First_Name, :Last_Name, :Gender, :Email, :Mobile)
end

end
