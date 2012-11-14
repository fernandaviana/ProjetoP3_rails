# coding: utf-8

require 'spec_helper'

feature 'gerenciar aluno' do

  scenario 'incluir aluno' do # , :js => true do

    visit new_aluno_path

    preencher_e_verificar_aluno

    

  end

  scenario 'alterar aluno' do #, :js => true do

    aluno = FactoryGirl.create(:aluno)

    visit edit_aluno_path(aluno)

    preencher_e_verificar_aluno



  end

   scenario 'excluir aluno' do #, :javascript => true do

       aluno = FactoryGirl.create(:aluno)

        visit alunos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_aluno

      fill_in 'Matricula', :with => "99999" 
      fill_in 'NomeAluno', :with => "Paulo Henrique"
      fill_in 'Sexo', :with => "M" 
      
      click_button 'Salvar'

      
      page.should have_content 'Matricula: 99999'
      page.should have_content 'NomeAluno: Paulo Henrique'
      page.should have_content 'Sexo: M'
    
   end
end



