require 'route_constraints/internal_network_whitelist_constraint'

class Admin::ApplicationController < Administrate::ApplicationController
  before_filter :authenticate_admin

  def authenticate_admin
    unless request_is_internal?
      render json: 404
    end
  end

  private
  def request_is_internal?
    InternalNetworkWhitelistConstraint.new.matches?(request)
  end
  # Override this value to specify the number of elements to display at a time
  # on index pages. Defaults to 20.
  # def records_per_page
  #   params[:per_page] || 20
  # end
end
