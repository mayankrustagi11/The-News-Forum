class ForumController < ApplicationController

def users
@object=User.all	
end

def show
end

def generalnotices
@object=Notice.where(newstype:"General Notices")
end

def extracurricular
@object=Notice.where(newstype:"Extra Curricular")
end

def sports
@object=Notice.where(newstype:"Sports")	
end

def contactus
end

def delete
@object=Notice.new
end

def deletionsuccess
@object=Notice.new(table_params)
@newobject=Notice.find_by_id(@object.title)
@newobject.destroy
end

def forgetpassword
@object=User.new(object_params)
@newobject=User.find_by_Username(@object.Username)
end

def new
@object=User.new
end

def create
@object=User.new(object_params)
@object.save
UsermailerMailer.usermailer(@object).deliver_now
render :action=>"home"

end

def login
@object=User.new
end

def home
@object=User.new(object_params)
@newobject=User.find_by_Username(@object.Username)

  if @newobject && params[:Password]==@newobject.Password
	 render :action=>"home"
	
  else	
    @newobject=nil
    redirect_to :action=>"login"    
  end

end

def Admin
@object=Admin.new
end

def adminhome
@object=Admin.new(admin_params)
@newobject=Admin.find_by_adminid(@object.adminid)

end

def upload
@object=Notice.new
end

def uploadsuccess
 @object=Notice.new(table_params)
 @object.date= Time.now.to_datetime
 @object.expiry=@object.date+ 30.days
 @object.save
end

private

def object_params
params.require(:user).permit(:Username, :Password, :First_Name, :Last_Name, :Gender, :Email, :Mobile)
end

def table_params
params.require(:notice).permit(:adminid, :title, :newstype, :text, :date, :expiry)
end

def admin_params
params.require(:admin).permit(:adminid, :password)
end

end
