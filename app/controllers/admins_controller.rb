class AdminsController < ApplicationController
	before_action :authenticate_admin!

	def login

	end

	def main
		@admin = Admin.find(params[:id])
		@books = Book.all
		@users = User.all
		redirect_to admin_main_path(@admin.id)
	end

	def new

	end
	
end