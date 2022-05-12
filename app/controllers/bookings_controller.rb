class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end


  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @game = Game.find(params[:game_id])
    @booking = Booking.new
  end

  def create
    @game = Game.find(params[:game_id])
    @booking = Booking.new(booking_params)
    @booking.game = @game
    @booking.user = current_user


    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit


  end


  def update

  end

  def destroy

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end


end
