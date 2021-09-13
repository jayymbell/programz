require 'test_helper'

class ProgramRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program_role = program_roles(:one)
  end

  test "should get index" do
    get program_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_program_role_url
    assert_response :success
  end

  test "should create program_role" do
    assert_difference('ProgramRole.count') do
      post program_roles_url, params: { program_role: { description: @program_role.description, name: @program_role.name, program_id: @program_role.program_id } }
    end

    assert_redirected_to program_role_url(ProgramRole.last)
  end

  test "should show program_role" do
    get program_role_url(@program_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_role_url(@program_role)
    assert_response :success
  end

  test "should update program_role" do
    patch program_role_url(@program_role), params: { program_role: { description: @program_role.description, name: @program_role.name, program_id: @program_role.program_id } }
    assert_redirected_to program_role_url(@program_role)
  end

  test "should destroy program_role" do
    assert_difference('ProgramRole.count', -1) do
      delete program_role_url(@program_role)
    end

    assert_redirected_to program_roles_url
  end
end
