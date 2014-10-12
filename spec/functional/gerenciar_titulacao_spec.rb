# coding: utf-8

require 'rails_helper'

feature 'gerenciar Titulacao' do

  scenario 'incluir Titulacao' do #, :js => true  do

    visit new_titulacao_path

    preencher_e_verificar_titulacao



  end

  scenario 'alterar Titulacao' do#, :js => true  do

    titulacao = FactoryGirl.create(:titulacao)

    visit edit_titulacao_path(titulacao)

    preencher_e_verificar_titulacao



  end

   scenario 'excluir titulacao' do #, :js => true do

       titulacao = FactoryGirl.create(:titulacao)

        visit titulacoes_path

        click_link 'Excluir'



  end

   def preencher_e_verificar_titulacao

      fill_in 'Mestre',  :with => "Mestre"
      fill_in 'Pos',  :with => "Pos"
      fill_in 'Doutor',  :with => "Doutor"

      click_button 'Salvar'

      expect(page).to have_content 'Mestre: Mestre'
      expect(page).to have_content 'Pos: Pos'
      expect(page).to have_content 'Doutor: Doutor'

   end
end