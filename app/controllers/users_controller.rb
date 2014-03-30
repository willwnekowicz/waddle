class UsersController < ApplicationController

  def current
    @locations = current_user.locations
  end

end
