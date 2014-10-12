# coding: utf-8

require 'rails_helper'

feature 'gerenciar Producao_cientifica' do

  scenario 'incluir Producao_cientifica' do #, :js => true  do

    visit new_producao_cientifica_path

    preencher_e_verificar_producao_cientifica

  end

  scenario 'alterar Producao_cientifica' do#, :js => true  do

    producao_cientifica = FactoryGirl.create(:producao_cientifica)

    visit edit_producao_cientifica_path(producao_cientifica)

    preencher_e_verificar_producao_cientifica

  end

  scenario 'excluir producao_cientifica' do #, :js => true do

       producao_cientifica = FactoryGirl.create(:producao_cientifica)

        visit producao_cientificas_path

        click_link 'Excluir'

  end

  def preencher_e_verificar_producao_cientifica

      fill_in 'Artigo',  :with => "Artigo"
      fill_in 'Monografia',  :with => "Monografia"

      click_button 'Salvar'

      expect(page).to have_content 'Artigo: Artigo'
      expect(page).to have_content 'Monografia: Monografia'

   end
  
end