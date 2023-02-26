class AlunosController < ApplicationController
  def new
    @aluno = Aluno.new
  end

  def show
    @aluno = Aluno.all
  end

  def create
    @aluno = Aluno.new(aluno_params)
    if @aluno.save
      render 'show', notice: 'Cadastro realizado'
    else
      render 'new', notice: 'Erro no cadastro. Tente de novo.'
    end
  end

  private
  def aluno_params
    aluno_params = params.require(:aluno).permit(:nome, :sobrenome, :cpf, :email, :telefone, :cep, :endereco)
  end
end
