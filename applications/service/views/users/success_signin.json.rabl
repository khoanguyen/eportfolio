object false
     
node :result do
	true
end

node :value do
    {   
		:user_key => @user_key,
    	:user => {
			:username => @user.username,
			:display_name => @user.display_name,
			:email => @user.email,
			:status => @user.status
		}
	}
end