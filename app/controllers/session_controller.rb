class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])

    if user.try(:authen)

    end
  end

  def destroy
  end
end
