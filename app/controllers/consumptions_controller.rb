class ConsumptionsController < ApplicationController
  before_action :set_consumption, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @consumptions = current_user.consumptions
  end

  def show
  end

  def new
    @consumption = Consumption.new
  end

  def edit
  end

  def create
    @consumption = current_user.consumptions.build(consumption_params)

    if @consumption.save
      redirect_to @consumption, notice: 'Consumption was successfully created.'
    else
      render :new
    end
  end

  def update
    if @consumption.update(consumption_params)
      redirect_to @consumption, notice: 'Consumption was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @consumption.destroy
    redirect_to consumptions_url, notice: 'Consumption was successfully destroyed.'
  end

  private
    def set_consumption
      @consumption = current_user.consumptions.find(params[:id])
    end

    def consumption_params
      params.require(:consumption).permit(:entertainment_id, :consumed_on, :note, :comment, :image)
    end
end
