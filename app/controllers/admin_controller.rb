class AdminController < ApplicationController
  def index
    if request_is_internal?
      users = Contact.all
      render json: { users: users }
    end
  end
end
