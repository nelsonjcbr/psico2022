require "test_helper"

class GuiasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guia = guias(:one)
  end

  test "should get index" do
    get guias_url
    assert_response :success
  end

  test "should get new" do
    get new_guia_url
    assert_response :success
  end

  test "should create guia" do
    assert_difference("Guia.count") do
      post guias_url, params: { guia: { data_fatura: @guia.data_fatura, paciente_id: @guia.paciente_id, solicitados: @guia.solicitados, tipo: @guia.tipo } }
    end

    assert_redirected_to guia_url(Guia.last)
  end

  test "should show guia" do
    get guia_url(@guia)
    assert_response :success
  end

  test "should get edit" do
    get edit_guia_url(@guia)
    assert_response :success
  end

  test "should update guia" do
    patch guia_url(@guia), params: { guia: { data_fatura: @guia.data_fatura, paciente_id: @guia.paciente_id, solicitados: @guia.solicitados, tipo: @guia.tipo } }
    assert_redirected_to guia_url(@guia)
  end

  test "should destroy guia" do
    assert_difference("Guia.count", -1) do
      delete guia_url(@guia)
    end

    assert_redirected_to guias_url
  end
end
