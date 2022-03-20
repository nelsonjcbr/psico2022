require "application_system_test_case"

class EvolucaoTiposTest < ApplicationSystemTestCase
  setup do
    @evolucao_tipo = evolucao_tipos(:one)
  end

  test "visiting the index" do
    visit evolucao_tipos_url
    assert_selector "h1", text: "Evolucao tipos"
  end

  test "should create evolucao tipo" do
    visit evolucao_tipos_url
    click_on "New evolucao tipo"

    fill_in "Nome", with: @evolucao_tipo.nome
    click_on "Create Evolucao tipo"

    assert_text "Evolucao tipo was successfully created"
    click_on "Back"
  end

  test "should update Evolucao tipo" do
    visit evolucao_tipo_url(@evolucao_tipo)
    click_on "Editar evolucao tipo", match: :first

    fill_in "Nome", with: @evolucao_tipo.nome
    click_on "Update Evolucao tipo"

    assert_text "Evolucao tipo was successfully updated"
    click_on "Back"
  end

  test "should destroy Evolucao tipo" do
    visit evolucao_tipo_url(@evolucao_tipo)
    click_on "Destroy this evolucao tipo", match: :first

    assert_text "Evolucao tipo was successfully destroyed"
  end
end
