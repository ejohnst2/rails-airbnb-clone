class TripsController < ApplicationController
  before_action :set_trip, only: [:edit, :show, :update, :destroy, :confirmation, :approve]

  def new
    @bunker =  Bunker.find(params[:bunker_id])
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)


    @bunker =  Bunker.find(params[:bunker_id])
    @trip.bunker = @bunker
    @trip.user = current_user
    @trip.booking_date = Date.today

    if @trip.save
      redirect_to confirmation_trip_path(@trip)
    else
      render 'bunkers/#{@bunker.id}/show'
    end
  end

  def confirmation
  end

  def approve
    @trip.update({approved: params[:approved]})
    redirect_to host_bunkers_path
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
    @user = current_user
  end

  def index
    @trips = current_user.trips
  end

  def destroy
    @trip.destroy
  end

private
  def set_trip
    @trip = Trip.find(params[:id])
  end
  def trip_params
    params.require(:trip).permit(:start_date, :end_date)
  end
end
