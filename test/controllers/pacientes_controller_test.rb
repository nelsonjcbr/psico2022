require "test_helper"

class PacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_url
    assert_response :success
  end

  test "should create paciente" do
    assert_difference("Paciente.count") do
      post pacientes_url, params: { paciente: { bairro: @paciente.bairro, cidade: @paciente.cidade, cpf: @paciente.cpf, data_nascimento: @paciente.data_nascimento, endereco: @paciente.endereco, estado_civil: @paciente.estado_civil, filhos: @paciente.filhos, fones: @paciente.fones, grau_instrucao: @paciente.grau_instrucao, local_trabalho: @paciente.local_trabalho, nome: @paciente.nome, nome_conjuge: @paciente.nome_conjuge, nome_mae: @paciente.nome_mae, nome_pai: @paciente.nome_pai, profissao: @paciente.profissao, religiao: @paciente.religiao, sexo: @paciente.sexo } }
    end

    assert_redirected_to paciente_url(Paciente.last)
  end

  test "should show paciente" do
    get paciente_url(@paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_url(@paciente)
    assert_response :success
  end

  test "should update paciente" do
    patch paciente_url(@paciente), params: { paciente: { bairro: @paciente.bairro, cidade: @paciente.cidade, cpf: @paciente.cpf, data_nascimento: @paciente.data_nascimento, endereco: @paciente.endereco, estado_civil: @paciente.estado_civil, filhos: @paciente.filhos, fones: @paciente.fones, grau_instrucao: @paciente.grau_instrucao, local_trabalho: @paciente.local_trabalho, nome: @paciente.nome, nome_conjuge: @paciente.nome_conjuge, nome_mae: @paciente.nome_mae, nome_pai: @paciente.nome_pai, profissao: @paciente.profissao, religiao: @paciente.religiao, sexo: @paciente.sexo } }
    assert_redirected_to paciente_url(@paciente)
  end

  test "should destroy paciente" do
    assert_difference("Paciente.count", -1) do
      delete paciente_url(@paciente)
    end

    assert_redirected_to pacientes_url
  end
end
