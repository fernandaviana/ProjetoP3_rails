# coding: utf-8

 require 'spec_helper'

 feature 'gerenciar disciplinaprofessor' do

 scenario 'incluir disciplinaprofessor' do #, :javascript => true  do

  disciplina = FactoryGirl.create(:disciplina, :nomedisciplina => 'Portugues')
  
  professor = FactoryGirl.create(:professor, :nomeprofessor => 'Francisco')

  visit new_disciplinaprofessor_path
 
    preencher_e_verificar_disciplinaprofessor

  end

  
   scenario 'alterar disciplinaprofessor' do #, :javascript => true  do

   disciplina = FactoryGirl.create(:disciplina, :nomedisciplina => 'Portugues')
    
   professor = FactoryGirl.create(:professor, :nomeprofessor => 'Francisco')

    disciplinaprofessor = FactoryGirl.create(:disciplinaprofessor, :disciplina => disciplina, :professor => professor)

   visit edit_disciplinaprofessor_path(disciplinaprofessor)
     
      preencher_e_verificar_disciplinaprofessor

 	

end
 	

     scenario 'excluir disciplinaprofessor' do #, :javascript => true  do
	

       disciplina = FactoryGirl.create(:disciplina, :nomedisciplina => 'Portugues')

        professor = FactoryGirl.create(:professor, :nomeprofessor => 'Francisco')
 
        disciplinaprofessor = FactoryGirl.create(:disciplinaprofessor,:disciplina => disciplina, :professor => professor)   

         visit disciplinaprofessors_path

           click_link 'Excluir'
	

 end


  def preencher_e_verificar_disciplinaprofessor

     
     fill_in 'Ano', :with => "2012"
     fill_in 'Periodo', :with => "5"

     select 'Portugues', :on => 'disciplina'

     select 'Francisco', :on => 'professor'
 
     click_button 'Salvar'

    
    page.should have_content 'Ano: 2012'
    page.should have_content 'Periodo: 5'   
    page.should have_content 'Disciplina: Portugues'
    page.should have_content 'Professor: Francisco'

  end

end
