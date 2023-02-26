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
    click_on 'Voltar'
  end 
  it 'vi area para cadastrar aluno' do
    visit new_aluno_path
    expect(page).to have_content('Cadastro de Aluno')
    expect(page).to have_content('Nome') 
    expect(page).to have_content('Sobrenome')
    expect(page).to have_content('Cpf')
    expect(page).to have_content('Email')
    expect(page).to have_content('Telefone')
    expect(page).to have_content('Cep')
    expect(page).to have_content('Endereco')
    fill_in 'Nome', with: 'Luiz'
    fill_in 'Sobrenome', with: 'Quintanilha'
    fill_in  'Cpf', with: '12345678910'
    fill_in 'Email', with: 'luiz.teste@teste.com'
    fill_in 'Telefone', with: '21-99999-8888'
    fill_in 'Cep', with: '237000-000'
    fill_in 'Endereco', with: 'Rua Rafaela Bela, n° 10, Nicolal de Vargas, Conceição do Castelo, ES'
    click_on 'Salvar'
    click_on 'Voltar'
  end
  it 'vi aluno cadastrado' do
    visit alunos_show_path
    expect(page).to have_content('Alunos cadastrados')
    expect(page).to have_content('Voltar')
    click_on 'Voltar'
  end
end