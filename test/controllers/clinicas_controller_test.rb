require "test_helper"

class ClinicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clinica = clinicas(:one)
  end

  test "should get index" do
    get clinicas_url
    assert_response :success
  end

  test "should get new" do
    get new_clinica_url
    assert_response :success
  end

  test "should create clinica" do
    assert_difference("Clinica.count") do
      post clinicas_url, params: { clinica: { bairro: @clinica.bairro, cidade: @clinica.cidade, cnpj: @clinica.cnpj, endereco: @clinica.endereco, fone: @clinica.fone, nome: @clinica.nome, uf: @clinica.uf } }
    end

    assert_redirected_to clinica_url(Clinica.last)
  end

  test "should show clinica" do
    get clinica_url(@clinica)
    assert_response :success
  end

  test "should get edit" do
    get edit_clinica_url(@clinica)
    assert_response :success
  end

  test "should update clinica" do
    patch clinica_url(@clinica), params: { clinica: { bairro: @clinica.bairro, cidade: @clinica.cidade, cnpj: @clinica.cnpj, endereco: @clinica.endereco, fone: @clinica.fone, nome: @clinica.nome, uf: @clinica.uf } }
    assert_redirected_to clinica_url(@clinica)
  end

  test "should destroy clinica" do
    assert_difference("Clinica.count", -1) do
      delete clinica_url(@clinica)
    end

    assert_redirected_to clinicas_url
  end
end
