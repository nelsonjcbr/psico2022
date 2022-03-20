require "application_system_test_case"

class ConveniosTest < ApplicationSystemTestCase
  setup do
    @convenio = convenios(:one)
  end

  test "visiting the index" do
    visit convenios_url
    assert_selector "h1", text: "Convenios"
  end

  test "should create convenio" do
    visit convenios_url
    click_on "New convenio"

    fill_in "Nome", with: @convenio.nome
    fill_in "Valor atendimento", with: @convenio.valor_atendimento
    click_on "Create Convenio"

    assert_text "Convenio was successfully created"
    click_on "Back"
  end

  test "should update Convenio" do
    visit convenio_url(@convenio)
    click_on "Editar convenio", match: :first

    fill_in "Nome", with: @convenio.nome
    fill_in "Valor atendimento", with: @convenio.valor_atendimento
    click_on "Update Convenio"

    assert_text "Convenio was successfully updated"
    click_on "Back"
  end

  test "should destroy Convenio" do
    visit convenio_url(@convenio)
    click_on "Destroy this convenio", match: :first

    assert_text "Convenio was successfully destroyed"
  end
end
