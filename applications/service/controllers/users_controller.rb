Service.controller :users do
  
  post :signin do
    @user = User[params[:username]]
    puts sha1_digest(params[:password], @user.salt)
    if @user && @user.password == sha1_digest(params[:password], @user.salt)
      @user_key = @user.signin(self.settings.user_key_time).user_key
      render 'users/success_signin'
    else
      @message = 'Invalid username/password'
      render 'users/fail_signin'
    end 
  end
  
end