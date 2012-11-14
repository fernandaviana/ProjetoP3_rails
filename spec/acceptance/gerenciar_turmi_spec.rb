# coding: utf-8

 require 'spec_helper'

 feature 'gerenciar turmi' do

 scenario 'incluir turmi' do #, :javascript => true  do

   aluno = FactoryGirl.create(:aluno, :nomealuno => 'Paulo Henrique')
  
    disciplinaprofessor = FactoryGirl.create(:disciplinaprofessor, :ano => '2012')

     visit new_turmi_path
 
     preencher_e_verificar_turmi

  end

  
   scenario 'alterar turmi' do #, :javascript => true  do

   aluno = FactoryGirl.create(:aluno, :nomealuno => 'Paulo Henrique')
    
    disciplinaprofessor = FactoryGirl.create(:disciplinaprofessor, :ano => '2012')

    turmi = FactoryGirl.create(:turmi, :aluno => aluno, :disciplinaprofessor => disciplinaprofessor)

     visit edit_turmi_path(turmi)
     
     preencher_e_verificar_turmi

 	

end
 	

     scenario 'excluir turmi' do #, :javascript => true  do
	

       aluno = FactoryGirl.create(:aluno, :nomealuno => 'Paulo Henrique')

        disciplinaprofessor = FactoryGirl.create(:disciplinaprofessor, :ano => '2012')
 
        turmi = FactoryGirl.create(:turmi,:aluno => aluno, :disciplinaprofessor => disciplinaprofessor)   

         visit turmis_path

           click_link 'Excluir'
	

 end


  def preencher_e_verificar_turmi

     
     
     select 'Paulo Henrique', :on => 'aluno'

     select '2012', :on => 'disciplinaprofessor'
 
     click_button 'Salvar'

    
      
    page.should have_content 'Aluno: Paulo Henrique'
    page.should have_content 'Disciplinaprofessor: 2012'

  end

end
