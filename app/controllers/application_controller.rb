class ApplicationController < ActionController::Base
 # protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:home, :about, :contact]

  def home
    photos = Photo.all.limit(20)
    @scrolls = photos.where(:img_type => 0)
    @thums = photos.where(:img_type => 1)
  end

  def about

  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, roles: []])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end
