require 'route_constraints/internal_network_whitelist_constraint'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_with!
    unless request_is_internal?
      render json: 404
    end
  end

  def current_admin_user
  end

  private
  def request_is_internal?
    InternalNetworkWhitelistConstraint.new.matches?(request)
  end

end
