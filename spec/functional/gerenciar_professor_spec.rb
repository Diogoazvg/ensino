# coding: utf-8

require 'rails_helper'

feature 'gerenciar Professor' do

  scenario 'incluir Professor' do #, :js => true  do

    visit new_professor_path

    preencher_e_verificar_professor



  end

  scenario 'alterar Professor' do#, :js => true  do

    professor = FactoryGirl.create(:professor)

    visit edit_professor_path(professor)

    preencher_e_verificar_professor



  end

   scenario 'excluir professor' do #, :js => true do

       professor = FactoryGirl.create(:professor)

        visit professores_path

        click_link 'Excluir'



  end

   def preencher_e_verificar_professor

      fill_in 'Nome',  :with => "Professor"
      fill_in 'Cpf',  :with => 1111
      fill_in 'Telefone',  :with => 1111
      fill_in 'Endereco',  :with => "Endereco"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Professor'
      expect(page).to have_content 'Cpf: 1111'
      expect(page).to have_content 'Telefone: 1111'
      expect(page).to have_content 'Endereco: Endereco'



   end
end