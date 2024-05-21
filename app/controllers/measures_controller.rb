class MeasuresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_measure, only: [:edit, :update]

  def new
    @measure = current_user.measures.new
  end

  def create
    @measure = current_user.measures.new(measure_params)
    if @measure.save
      redirect_to root_path, notice: 'Medidas guardadas exitosamente.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @measure.update(measure_params)
      redirect_to root_path, notice: 'Medidas actualizadas exitosamente.'
    else
      render :edit
    end
  end

  private

  def set_measure
    @measure = current_user.measures.find(params[:id])
  end

  def measure_params
    params.require(:measure).permit(:full_name, :age, :height, :chest, :hip, :waist, :arm, :tlength, :inseam, :leglength, :thighwidth, :backwidth)
  end
end
