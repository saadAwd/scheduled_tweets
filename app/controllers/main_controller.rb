class MainController < ApplicationController
	def index
		flash.now[:notice] = "Logged in successfully"
		flash.now[:alert] = "invaild email or password"
	end

end