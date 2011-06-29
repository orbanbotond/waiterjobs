class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password| 
      user_name == "foo" && password == "bar"
    end    
  end
end
