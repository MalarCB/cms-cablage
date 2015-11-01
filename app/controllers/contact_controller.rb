require 'route_constraints/internal_network_whitelist_constraint'

class ContactController < ApplicationController

  def new
  end

  def save
    user = Contact.new(contact_params)
    user.ip_address = request.ip
    user.is_internal = request_is_internal?
    user.status = true
    user.country = geo_location
    user.save
    respond_to do |format|
      format.json { render json: { user: user } }
    end
  end

  private

  def geo_location
    if Rails.env.test? || Rails.env.development?
      "dev"
    else
      begin
        request.location.country
      rescue => exception
        nil
      end
    end
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :company, :phone, :comments)
  end
end
