class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def games_params
    params.require(:game).permit(:name, :description, :photo)
  end
end
