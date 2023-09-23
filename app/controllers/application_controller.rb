class ApplicationController < ActionController::Base

	def hello
		render html: "hello, world! From the sample app!"
	end

end
