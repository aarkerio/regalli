class HomeController < ApplicationController
  def index
  end

  def history
  end

  def log
  end

  # GET /rankings
  def rankings
    @users = User.order(:rank)
    # return render text: @users
  end
end
