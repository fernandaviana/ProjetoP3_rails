# coding: utf-8

 require 'spec_helper'

 feature 'gerenciar telefone' do

 scenario 'incluir telefone' do #, :javascript => true  do

  aluno = FactoryGirl.create(:aluno, :nomealuno => 'Paulo Henrique')
  
  tipotelefone = FactoryGirl.create(:tipotelefone, :descricao => 'Celular')

  visit new_telefone_path
 
    preencher_e_verificar_telefone

  end

  
   scenario 'alterar telefone' do #, :javascript => true  do

   aluno = FactoryGirl.create(:aluno, :nomealuno => 'Paulo Henrique')
    
   tipotelefone = FactoryGirl.create(:tipotelefone, :descricao => 'celular')

    telefone = FactoryGirl.create(:telefone, :aluno => aluno, :tipotelefone => tipotelefone)

   visit edit_telefone_path(telefone)
     
      preencher_e_verificar_telefone

 	

end
 	

     scenario 'excluir telefone' do #, :javascript => true  do
	

       aluno = FactoryGirl.create(:aluno, :nomealuno => 'Paulo Henrique')

        tipotelefone = FactoryGirl.create(:tipotelefone, :descricao => 'Celular')
 
        telefone = FactoryGirl.create(:telefone,:aluno => aluno, :tipotelefone => tipotelefone)   

         visit telefones_path

           click_link 'Excluir'
	

 end


  def preencher_e_verificar_telefone

     
     fill_in 'Ddd', :with => "22"
     fill_in 'Numerotelefone', :with => "27334567"

     select 'Paulo Henrique', :on => 'aluno'

     select 'Celular', :on => 'tipotelefone'
 
     click_button 'Salvar'

    
    page.should have_content 'Ddd: 22'
    page.should have_content 'Numerotelefone: 27334567'   
    page.should have_content 'Aluno: Paulo Henrique'
    page.should have_content 'Tipotelefone: Celular'

  end

end
