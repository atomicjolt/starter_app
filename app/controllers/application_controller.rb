class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :current_account

  protected

    rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_url, :alert => exception.message
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:account_update) << :name
    end

    # **********************************************
    #
    # OAuth related functionality:
    #

    def check_external_identifier(user, only_build=false)
      if session[:external_identifier]
        exid = user.external_identifiers.build(:identifier => session[:external_identifier], :provider => session[:provider])
        exid.save! unless only_build
        session[:external_identifier] = nil
        session[:provider] = nil
        exid
      end
    end

    def find_external_identifier(url)
      return nil unless url.present?
      @provider = UrlHelper.host(url)
      @identifier = params[:user_id]
      ExternalIdentifier.find_by(provider: @provider, identifier: @identifier)
    end

    def create_external_identifier_with_url(auth, user)
      json = Yajl::Parser.parse(auth['json_response'])
      key = UrlHelper.host(json['info']['url'])
      user.external_identifiers.create(:identifier => auth.uid, :provider => key) # If they already have an exernal identifier this can just fail silently
    end

    def find_external_identifier(url)
      return nil unless url.present?
      @provider = UrlHelper.host(url)
      @identifier = params[:user_id]
      ExternalIdentifier.find_by(provider: @provider, identifier: @identifier)
    end

    # **********************************************
    #
    # Account related functionality:
    #

    def current_account
      @current_account ||= Account.find_by(code: request.subdomains.first) || Account.find_by(domain: request.host) || Account.main
    end

  private

    def user_not_authorized
      flash[:alert] = "Access denied."
      redirect_to (request.referrer || root_path)
    end

end
