module SessionsHelper
	def log_in(user)
		session[:user_id] = user.id
	end

	#returns  the current logged-in user
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	# returns true if the user is logegd in, false otherwise
	def logged_in?
		!current_user.nil?
	end

	# Logs out the current user.
  def log_out
    reset_session
    @current_user = nil
  end
end
