require "application_system_test_case"

class ClinicasTest < ApplicationSystemTestCase
  setup do
    @clinica = clinicas(:one)
  end

  test "visiting the index" do
    visit clinicas_url
    assert_selector "h1", text: "Clinicas"
  end

  test "should create clinica" do
    visit clinicas_url
    click_on "New clinica"

    fill_in "Bairro", with: @clinica.bairro
    fill_in "Cidade", with: @clinica.cidade
    fill_in "Cnpj", with: @clinica.cnpj
    fill_in "Endereco", with: @clinica.endereco
    fill_in "Fone", with: @clinica.fone
    fill_in "Nome", with: @clinica.nome
    fill_in "Uf", with: @clinica.uf
    click_on "Create Clinica"

    assert_text "Clinica was successfully created"
    click_on "Back"
  end

  test "should update Clinica" do
    visit clinica_url(@clinica)
    click_on "Edit this clinica", match: :first

    fill_in "Bairro", with: @clinica.bairro
    fill_in "Cidade", with: @clinica.cidade
    fill_in "Cnpj", with: @clinica.cnpj
    fill_in "Endereco", with: @clinica.endereco
    fill_in "Fone", with: @clinica.fone
    fill_in "Nome", with: @clinica.nome
    fill_in "Uf", with: @clinica.uf
    click_on "Update Clinica"

    assert_text "Clinica was successfully updated"
    click_on "Back"
  end

  test "should destroy Clinica" do
    visit clinica_url(@clinica)
    click_on "Destroy this clinica", match: :first

    assert_text "Clinica was successfully destroyed"
  end
end
