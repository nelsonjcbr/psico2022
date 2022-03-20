require "application_system_test_case"

class RecebimentosTest < ApplicationSystemTestCase
  setup do
    @recebimento = recebimentos(:one)
  end

  test "visiting the index" do
    visit recebimentos_url
    assert_selector "h1", text: "Recebimentos"
  end

  test "should create recebimento" do
    visit recebimentos_url
    click_on "New recebimento"

    fill_in "Data recebimento", with: @recebimento.data_recebimento
    fill_in "Obs", with: @recebimento.obs
    fill_in "Recurso", with: @recebimento.recurso_id
    fill_in "Valor recebido", with: @recebimento.valor_recebido
    click_on "Create Recebimento"

    assert_text "Recebimento was successfully created"
    click_on "Back"
  end

  test "should update Recebimento" do
    visit recebimento_url(@recebimento)
    click_on "Editar recebimento", match: :first

    fill_in "Data recebimento", with: @recebimento.data_recebimento
    fill_in "Obs", with: @recebimento.obs
    fill_in "Recurso", with: @recebimento.recurso_id
    fill_in "Valor recebido", with: @recebimento.valor_recebido
    click_on "Update Recebimento"

    assert_text "Recebimento was successfully updated"
    click_on "Back"
  end

  test "should destroy Recebimento" do
    visit recebimento_url(@recebimento)
    click_on "Destroy this recebimento", match: :first

    assert_text "Recebimento was successfully destroyed"
  end
end
