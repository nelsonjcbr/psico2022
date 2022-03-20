require "application_system_test_case"

class PacientesTest < ApplicationSystemTestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "visiting the index" do
    visit pacientes_url
    assert_selector "h1", text: "Pacientes"
  end

  test "should create paciente" do
    visit pacientes_url
    click_on "New paciente"

    fill_in "Bairro", with: @paciente.bairro
    fill_in "Cidade", with: @paciente.cidade
    fill_in "Cpf", with: @paciente.cpf
    fill_in "Data nascimento", with: @paciente.data_nascimento
    fill_in "Endereco", with: @paciente.endereco
    fill_in "Estado civil", with: @paciente.estado_civil
    fill_in "Filhos", with: @paciente.filhos
    fill_in "Fones", with: @paciente.fones
    fill_in "Grau instrucao", with: @paciente.grau_instrucao
    fill_in "Local trabalho", with: @paciente.local_trabalho
    fill_in "Nome", with: @paciente.nome
    fill_in "Nome conjuge", with: @paciente.nome_conjuge
    fill_in "Nome mae", with: @paciente.nome_mae
    fill_in "Nome pai", with: @paciente.nome_pai
    fill_in "Profissao", with: @paciente.profissao
    fill_in "Religiao", with: @paciente.religiao
    fill_in "Sexo", with: @paciente.sexo
    click_on "Create Paciente"

    assert_text "Paciente was successfully created"
    click_on "Back"
  end

  test "should update Paciente" do
    visit paciente_url(@paciente)
    click_on "Editar paciente", match: :first

    fill_in "Bairro", with: @paciente.bairro
    fill_in "Cidade", with: @paciente.cidade
    fill_in "Cpf", with: @paciente.cpf
    fill_in "Data nascimento", with: @paciente.data_nascimento
    fill_in "Endereco", with: @paciente.endereco
    fill_in "Estado civil", with: @paciente.estado_civil
    fill_in "Filhos", with: @paciente.filhos
    fill_in "Fones", with: @paciente.fones
    fill_in "Grau instrucao", with: @paciente.grau_instrucao
    fill_in "Local trabalho", with: @paciente.local_trabalho
    fill_in "Nome", with: @paciente.nome
    fill_in "Nome conjuge", with: @paciente.nome_conjuge
    fill_in "Nome mae", with: @paciente.nome_mae
    fill_in "Nome pai", with: @paciente.nome_pai
    fill_in "Profissao", with: @paciente.profissao
    fill_in "Religiao", with: @paciente.religiao
    fill_in "Sexo", with: @paciente.sexo
    click_on "Update Paciente"

    assert_text "Paciente was successfully updated"
    click_on "Back"
  end

  test "should destroy Paciente" do
    visit paciente_url(@paciente)
    click_on "Destroy this paciente", match: :first

    assert_text "Paciente was successfully destroyed"
  end
end
