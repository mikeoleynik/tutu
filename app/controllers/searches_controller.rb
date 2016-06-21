class SearchesController < ApplicationController
  def show
  end

  def new

  end

  def create
    @trains = Search.search_trains(params[:primary_station_id], params[:terminal_station_id])
    render :show
  end
end