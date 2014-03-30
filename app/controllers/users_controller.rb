class UsersController < ApplicationController

  def current
    @locations = User.find(1).locations
    logger.debug "LOCATIONS OMG: #{@locations.count}"
  end

end
