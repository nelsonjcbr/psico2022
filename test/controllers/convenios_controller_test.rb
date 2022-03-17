require "test_helper"

class ConveniosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @convenio = convenios(:one)
  end

  test "should get index" do
    get convenios_url
    assert_response :success
  end

  test "should get new" do
    get new_convenio_url
    assert_response :success
  end

  test "should create convenio" do
    assert_difference("Convenio.count") do
      post convenios_url, params: { convenio: { nome: @convenio.nome, valor_atendimento: @convenio.valor_atendimento } }
    end

    assert_redirected_to convenio_url(Convenio.last)
  end

  test "should show convenio" do
    get convenio_url(@convenio)
    assert_response :success
  end

  test "should get edit" do
    get edit_convenio_url(@convenio)
    assert_response :success
  end

  test "should update convenio" do
    patch convenio_url(@convenio), params: { convenio: { nome: @convenio.nome, valor_atendimento: @convenio.valor_atendimento } }
    assert_redirected_to convenio_url(@convenio)
  end

  test "should destroy convenio" do
    assert_difference("Convenio.count", -1) do
      delete convenio_url(@convenio)
    end

    assert_redirected_to convenios_url
  end
end
