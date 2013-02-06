class MeasurementsController < ApplicationController
  def new
    @measurement = Measurement.new
  end

  def create
    @measurement = Measurement.create!(params[:measurement])
    redirect_to @measurement
  end

  def show
    @measurement = Measurement.find(params[:id])
  end

  def index
    @measurements = Measurement.all
  end
end