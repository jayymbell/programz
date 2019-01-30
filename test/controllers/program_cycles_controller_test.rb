require 'test_helper'

class ProgramCyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program_cycle = program_cycles(:one)
  end

  test "should get index" do
    get program_cycles_url
    assert_response :success
  end

  test "should get new" do
    get new_program_cycle_url
    assert_response :success
  end

  test "should create program_cycle" do
    assert_difference('ProgramCycle.count') do
      post program_cycles_url, params: { program_cycle: { description: @program_cycle.description, ends_on: @program_cycle.ends_on, name: @program_cycle.name, program_id: @program_cycle.program_id, starts_on: @program_cycle.starts_on } }
    end

    assert_redirected_to program_cycle_url(ProgramCycle.last)
  end

  test "should show program_cycle" do
    get program_cycle_url(@program_cycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_cycle_url(@program_cycle)
    assert_response :success
  end

  test "should update program_cycle" do
    patch program_cycle_url(@program_cycle), params: { program_cycle: { description: @program_cycle.description, ends_on: @program_cycle.ends_on, name: @program_cycle.name, program_id: @program_cycle.program_id, starts_on: @program_cycle.starts_on } }
    assert_redirected_to program_cycle_url(@program_cycle)
  end

  test "should destroy program_cycle" do
    assert_difference('ProgramCycle.count', -1) do
      delete program_cycle_url(@program_cycle)
    end

    assert_redirected_to program_cycles_url
  end
end
