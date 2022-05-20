class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy ]

  def index
    @bookings = Booking.all
  end

  def show
    @number_of_days = (@booking.end_date - @booking.start_date).to_i
  end

  def new;
  end

  def create
    @booking = Booking.new(booking_params)
    @game = Game.find(params[:game_id])
    @booking.game = @game
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to game_path(@game), alert: @booking.errors.full_messages
    end
  end

  def edit; end

  def update
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
