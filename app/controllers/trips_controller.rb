class TripsController < ApplicationController
  before_action :set_bunker, only: [:edit, :show, :update, :destroy]

  def create
    @trip = Trip.new(trip_params)
    @bunker = Bunker.find(params[:bunker_id])
    @user = current_user.id
    @booking_date = Date.today

    if @trip.save
      redirect_to bunker_path(@bunker)
    else
      render 'bunkers/#{@bunker.id}/show'
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Your reservation has been updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    @trip.destroy
  end

private
  def set_trip
    @trip = Trip.find(params[:id])
  end
  def trip_params
    params.require(:trip).permit(:user_id, :bunker_id, :booking_date, :start_date, :end_date)
  end
end
