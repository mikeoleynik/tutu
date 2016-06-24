class Admin::RailwayStationsController < Admin::BaseController
  before_action :set_railway_station, only: [:show, :edit, :update, :destroy, :update_position, :update_arrive_time, :update_departure_time]

  def index
    @railway_stations = RailwayStation.all
  end

  def show
  end

  def new
    @railway_station = RailwayStation.new
  end

  def edit
  end

  def create
    @railway_station = RailwayStation.new(railway_station_params)

    respond_to do |format|
      if @railway_station.save
        format.html { redirect_to [:admin, @railway_station], notice: 'Railway station was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @railway_station.update(railway_station_params)
        format.html { redirect_to [:admin, @railway_station], notice: 'Railway station was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @railway_station.destroy
    respond_to do |format|
      format.html { redirect_to admin_railway_stations_url, notice: 'Railway station was successfully destroyed.' }
    end
  end

  def update_position
    @route = Route.find(params[:route_id])
    @railway_station.update_position(@route, params[:position])
    redirect_to @route
  end

  def update_arrive_time
    @route = Route.find(params[:route_id])
    @railway_station.update_arrive(@route, params[:arrive_time])
    redirect_to @route
  end

  def update_departure_time
    @route = Route.find(params[:route_id])
    @railway_station.update_departure(@route, params[:departure_time])
    redirect_to @route
  end

  private
    def set_railway_station
      @railway_station = RailwayStation.find(params[:id])
    end

    def railway_station_params
      params.require(:railway_station).permit(:title, :number)
    end
end