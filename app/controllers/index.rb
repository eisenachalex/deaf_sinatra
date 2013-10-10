get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
	@grandma = params[:user_input]
	if @grandma == ""
		return "Say something" 
	elsif @grandma != @grandma.upcase
		return  "I can't hear you"
	else
		return "Not since 1989"
	end
end
