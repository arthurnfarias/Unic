require 'test_helper'

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
    assert_difference('Paciente.count') do
      post pacientes_url, params: { paciente: { ans: @paciente.ans, cartao: @paciente.cartao, cpf: @paciente.cpf, email: @paciente.email, idade: @paciente.idade, identidade: @paciente.identidade, nascimento: @paciente.nascimento, nome: @paciente.nome, observacao: @paciente.observacao, operadora: @paciente.operadora, plano: @paciente.plano, prontuario: @paciente.prontuario, sexo: @paciente.sexo, telefone: @paciente.telefone, titular: @paciente.titular, usuario: @paciente.usuario } }
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
    patch paciente_url(@paciente), params: { paciente: { ans: @paciente.ans, cartao: @paciente.cartao, cpf: @paciente.cpf, email: @paciente.email, idade: @paciente.idade, identidade: @paciente.identidade, nascimento: @paciente.nascimento, nome: @paciente.nome, observacao: @paciente.observacao, operadora: @paciente.operadora, plano: @paciente.plano, prontuario: @paciente.prontuario, sexo: @paciente.sexo, telefone: @paciente.telefone, titular: @paciente.titular, usuario: @paciente.usuario } }
    assert_redirected_to paciente_url(@paciente)
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete paciente_url(@paciente)
    end

    assert_redirected_to pacientes_url
  end
end
