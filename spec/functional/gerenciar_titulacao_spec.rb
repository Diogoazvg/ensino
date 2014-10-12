# coding: utf-8

require 'rails_helper'

feature 'gerenciar Titulacao' do

  scenario 'incluir Titulacao' do #, :js => true  do

    visit new_titulacao_path

    preencher_e_verificar_titulacao

  end


end