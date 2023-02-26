require 'rails_helper'
describe 'Entrei na página' do 
  it 'vi' do
    visit root_path
    expect(page).to have_content('Espaço do Administrador')
    expect(page).to have_content('Cadastrar Aluno')
    expect(page).to have_content('Ver alunos')
    click_on 'Cadastrar Aluno'
    click_on 'Voltar'
    click_on 'Ver alunos'
  end
end