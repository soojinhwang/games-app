class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :edit, :update, :destroy ]

  def index
    @bookings = Booking.all
  end

  def show
    @number_of_days = (@offer.end_date - @offer.start_date).to_i
  end

  def new
    @booking = Booking.new
    @game = Game.find(params[:game_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @game = Game.find(params[:game_id])
    @booking.game = @game
    @booking.user = current_user
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit; end

  def update
    # how do I changed the approved from false to true? how do I know who can control the edit action?
    # is it booking.user(the person renting the game) as well as booking.game.user(the owner of the game)? or just one of them?
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :game_id)
  end
end
