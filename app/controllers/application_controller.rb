class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
before_action :set_locale
 private
def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
  Rails.application.routes.default_url_options[:locale]= I18n.locale
end

def default_url_options(options={})
  logger.debug "default_url_options is passed options: #{options.inspect}\n"
  { locale: I18n.locale }
end

   protected
    
    def login_required
      return true if User.find_by_id(session[:user_id])
      access_denied
      return false
    end
    def access_denied
      flash[:error] = 'Oops. You need to login before you can view that page.'
      redirect_to :log_in
    end
end
