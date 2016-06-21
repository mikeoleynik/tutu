class SearchesController < ApplicationController
  def show
  end

  def new
  end

  def create
    @trains = Search.search_trains(params[:station_first], params[:station_last])
    render :show
  end
end