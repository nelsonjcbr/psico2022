require "application_system_test_case"

class GuiasTest < ApplicationSystemTestCase
  setup do
    @guia = guias(:one)
  end

  test "visiting the index" do
    visit guias_url
    assert_selector "h1", text: "Guias"
  end

  test "should create guia" do
    visit guias_url
    click_on "New guia"

    fill_in "Data fatura", with: @guia.data_fatura
    fill_in "Paciente", with: @guia.paciente_id
    fill_in "Solicitados", with: @guia.solicitados
    fill_in "Tipo", with: @guia.tipo
    click_on "Create Guia"

    assert_text "Guia was successfully created"
    click_on "Back"
  end

  test "should update Guia" do
    visit guia_url(@guia)
    click_on "Edit this guia", match: :first

    fill_in "Data fatura", with: @guia.data_fatura
    fill_in "Paciente", with: @guia.paciente_id
    fill_in "Solicitados", with: @guia.solicitados
    fill_in "Tipo", with: @guia.tipo
    click_on "Update Guia"

    assert_text "Guia was successfully updated"
    click_on "Back"
  end

  test "should destroy Guia" do
    visit guia_url(@guia)
    click_on "Destroy this guia", match: :first

    assert_text "Guia was successfully destroyed"
  end
end
