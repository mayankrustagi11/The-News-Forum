Rails.application.routes.draw do
  

  get "forum/new"
  get "forum/login"
  get "forum/forgetpassword"
  get "forum/upload"
  get "forum/show"
  get "forum/Admin"
  
  post "forum/new"
  post "forum/upload"
 
 
end
