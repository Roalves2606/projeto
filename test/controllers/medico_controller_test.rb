require 'test_helper'

class MedicoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medico_index_url
    assert_response :success
  end

  test "should get new" do
    get medico_new_url
    assert_response :success
  end

end
