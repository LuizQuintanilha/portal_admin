require "test_helper"

class AlunosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alunos_index_url
    assert_response :success
  end

  test "should get new" do
    get alunos_new_url
    assert_response :success
  end
end
