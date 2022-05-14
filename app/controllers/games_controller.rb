class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_game, only: [ :show, :edit, :update, :destroy ]

  def index
    @games = Game.all

    @markers = @games.geocoded.map do |game|
      {
        lat: game.latitude,
        lng: game.longitude,
        info_window: render_to_string(partial: "info_window", locals: { game: game })
      }
      # {image_url: helpers.asset_url("logo.png")
      # }
    end
  end

  def show; end

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

  def edit; end

  def update
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end



  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :category, :description, :location, :price_per_day, :photo)
  end
end
