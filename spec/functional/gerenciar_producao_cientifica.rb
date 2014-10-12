# coding: utf-8

require 'rails_helper'

feature 'gerenciar Producao_cientifica' do

  scenario 'incluir Producao_cientifica' do #, :js => true  do

    visit new_producao_cientifica_path

    preencher_e_verificar_producao_cientifica



  end

  
end