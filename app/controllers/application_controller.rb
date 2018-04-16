class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :auth

  def hello
  end

  def current_user
    session[:name] || nil
  end

  private

  def auth
     redirect_to '/login' unless session.include? :name 
  end

end
