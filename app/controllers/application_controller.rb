class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
  	render html: "hello Thao Ly ^^ , have a nice day !"
  end
end
