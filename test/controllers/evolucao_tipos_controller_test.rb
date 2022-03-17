require "test_helper"

class EvolucaoTiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evolucao_tipo = evolucao_tipos(:one)
  end

  test "should get index" do
    get evolucao_tipos_url
    assert_response :success
  end

  test "should get new" do
    get new_evolucao_tipo_url
    assert_response :success
  end

  test "should create evolucao_tipo" do
    assert_difference("EvolucaoTipo.count") do
      post evolucao_tipos_url, params: { evolucao_tipo: { nome: @evolucao_tipo.nome } }
    end

    assert_redirected_to evolucao_tipo_url(EvolucaoTipo.last)
  end

  test "should show evolucao_tipo" do
    get evolucao_tipo_url(@evolucao_tipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_evolucao_tipo_url(@evolucao_tipo)
    assert_response :success
  end

  test "should update evolucao_tipo" do
    patch evolucao_tipo_url(@evolucao_tipo), params: { evolucao_tipo: { nome: @evolucao_tipo.nome } }
    assert_redirected_to evolucao_tipo_url(@evolucao_tipo)
  end

  test "should destroy evolucao_tipo" do
    assert_difference("EvolucaoTipo.count", -1) do
      delete evolucao_tipo_url(@evolucao_tipo)
    end

    assert_redirected_to evolucao_tipos_url
  end
end
