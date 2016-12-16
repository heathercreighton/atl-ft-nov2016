class AdministrationController < ApplicationController
  def user_list
  	@users = User.all

  end

  def add_admin
  	@users = User.find(params[:id]).update(role: "admin")
  	redirect_to user_list_path
  end

  def remove_admin
  	User.find(params[:id]).update(role: "guest")
  	redirect_to user_list_path
  end
end
