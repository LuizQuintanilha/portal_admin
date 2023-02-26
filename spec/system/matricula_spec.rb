require 'rails_helper'

describe 'Acessei a página e vi' do
  it 'matriculas cadastradas' do
    visit matriculas_path
    expect(page).to have_content('Alunos Matriculados')
    expect(page).to have_content('Voltar')
  end
  it 'página para fazer matrícula' do 
    visit matriculas_new_path
    expect(page).to have_content('Matrícula')
    expect(page).to have_content('Curso')
    expect(page).to have_content('Turno')
    expect(page).to have_content('Período')
    expect(page).to have_content('Tipo de curso')
    expect(page).to have_content('Modalidade')
    expect(page).to have_content('Data da matrícula')
    #fill_in 'Matrícula', with: '20232602-1720'
    #fill_in 'Curso', with: 'Ads'
    #fill_in 'Turno', with: 'Ead'
    #fill_in 'Período', with: '1º'
    #fill_in 'Tipo de Curso', with: 'Tecnólogo'
    #fill_in 'Modalidade', with: 'EaD'
    #fill_in 'Data da matrícula', with: Time.now
    expect(page).to have_content('Voltar')
    click_on 'Save'
  end
end