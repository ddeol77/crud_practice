# Sign in form
get '/sessions/new' do
	erb :'sessions/new'
end

# Authenticate and redirect
post '/sessions' do
	puts params.inspect
end
