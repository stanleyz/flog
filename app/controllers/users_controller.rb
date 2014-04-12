class UsersController < ApplicationController
  def my
    @families = current_user.families
  end
end
