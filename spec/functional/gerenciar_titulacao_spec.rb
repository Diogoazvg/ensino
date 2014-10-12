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

end