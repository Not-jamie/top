  class UsersController < ApplicationController  
  before_filter :login_required, :only=> :my_account
    def new  
      @user = User.new  
    end 

    # POST users
    def create  
      @user = User.new(params[:user])  
      if @user.save  
        redirect_to :sign_up, :notice => "Signed up!"  
      else  
        render "new"  
      end  
    end 
	
	def show
	redirect_to :log_in
	end
	
	def process_login  

    user = User.authenticate(params[:email], params[:password])  
  
   if user  
    
      session[:user_id] = user.id  
    
      redirect_to :my_account, :notice => "Logged in!"  
    
   else  
   
      #flash.now.alert = "Invalid email or password"  
   
      render "login"  
   
    end  

  end  
  
	def logout
	session[:user_id] = nil
	redirect_to :log_in , :notice => "Logged out!"
	end 
  
  def my_account
     
      if session[:user_id] != nil
     
         @sessName = User.find(session[:user_id]).email
     
      else
      
         @sessName = "Guest"
      
      end
  
  end
  private
   def user_params
 params.require(:user).permit(:email, :password_hash, :password_salt, :password, :password_confirmation)
 end
  end 