class MatriculasController < ApplicationController
  def index
    @matricula = Matricula.all
  end
  def show
    @matricula = Matricula.find(params[:id])
  end
  def new
    @matricula = Matricula.new
  end
  def create
    @matricula = Matricula.new(matricula_params)
    if @matricula.save
      render matriculas_show_path[:id], notice: 'Matrícula realizada com sucesso'
    else
      render 'new', notice: 'Erro ao matricular. Tente de novo!'
    end
  end

  private
  def matricula_params
    matricula_params = params.require(:matricula).permit(:matricula, :curso, :tipo_curso, :modalidade, :turno, :periodo, :data_matricula)
  end
end
