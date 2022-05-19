class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
    @my_games = current_user.games
    @my_bookings = current_user.bookings
  end
end
