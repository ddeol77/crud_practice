
# New user form
get '/users/new' do
	@user = User.new
	erb :'users/new'
end

# Creates users
post '/users' do
	puts params.inspect
	@user = User.new(params[:user])
	if @user.save
		session[:user_id] = @user.id
		redirect to '/'
	else
		erb :'users/new'
	end
end
