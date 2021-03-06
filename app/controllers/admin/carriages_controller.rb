class Admin::CarriagesController < Admin::BaseController
  before_action :set_train, only: [:new, :create]

  def new
    @carriage = Carriage.new
  end

  def show
    @carriage = Carriage.find(params[:id])
  end

  def create
    @carriage = @train.carriages.new(carriage_params)

    if @carriage.save
      redirect_to [:admin, @train]
    else
      render :new
    end
  end

  protected

  def set_train
    @train = Train.find(params[:train_id])
  end

  def carriage_params
    params.require(:carriage).permit(:number, :train_id, :up_places, :lower_places, :side_up_places, :side_lower_places, :sit_places, :type_car, :is_head)
  end
end
