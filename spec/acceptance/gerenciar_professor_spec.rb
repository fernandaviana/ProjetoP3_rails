# coding: utf-8

require 'spec_helper'

feature 'gerenciar professor' do

  scenario 'incluir professor' do # , :js => true do

    visit new_professor_path

    preencher_e_verificar_professor

    

  end

  scenario 'alterar professor' do #, :js => true do

    professor = FactoryGirl.create(:professor)

    visit edit_professor_path(professor)

    preencher_e_verificar_professor



  end

   scenario 'excluir professor' do #, :javascript => true do

       professor = FactoryGirl.create(:professor)

        visit professors_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_professor

      
      fill_in 'NomeProfessor', :with => "Francisco"
      fill_in 'Sexo', :with => "M" 
      
      click_button 'Salvar'

      
      page.should have_content 'NomeProfessor: Francisco'
      page.should have_content 'Sexo: M'
    
   end
end



