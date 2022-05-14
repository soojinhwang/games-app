class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end


  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :category, :description, :location, :price_per_day, :photo)
  end
end
