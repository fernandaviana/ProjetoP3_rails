# coding: utf-8

require 'spec_helper'

feature 'gerenciar disciplina' do

  scenario 'incluir disciplina' do # , :js => true do

    visit new_disciplina_path

    preencher_e_verificar_disciplina

    

  end

  scenario 'alterar disciplina' do #, :js => true do

    disciplina = FactoryGirl.create(:disciplina)

    visit edit_disciplina_path(disciplina)

    preencher_e_verificar_disciplina



  end

   scenario 'excluir disciplina' do #, :javascript => true do

       disciplina = FactoryGirl.create(:disciplina)

        visit disciplinas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_disciplina

      fill_in 'NomeDisciplina', :with => "Portugues" 
      fill_in 'Sigla', :with => "Port"
      fill_in 'CargaHoraria', :with => "30h" 
      fill_in 'Periodo', :with => "manhã"      


      click_button 'Salvar'

      
      page.should have_content 'NomeDisciplina: Portugues '
      page.should have_content 'Sigla: Port'
      page.should have_content 'CargaHoraria: 30h'
      page.should have_content 'Periodo: manhã'


   end
end



