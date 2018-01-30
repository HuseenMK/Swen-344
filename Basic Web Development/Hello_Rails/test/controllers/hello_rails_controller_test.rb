require 'test_helper'

class HelloRailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hello_rail = hello_rails(:one)
  end

  test "should get index" do
    get hello_rails_url
    assert_response :success
  end

  test "should get new" do
    get new_hello_rail_url
    assert_response :success
  end

  test "should create hello_rail" do
    assert_difference('HelloRail.count') do
      post hello_rails_url, params: { hello_rail: { completed: @hello_rail.completed, due_on: @hello_rail.due_on, name: @hello_rail.name } }
    end

    assert_redirected_to hello_rail_url(HelloRail.last)
  end

  test "should show hello_rail" do
    get hello_rail_url(@hello_rail)
    assert_response :success
  end

  test "should get edit" do
    get edit_hello_rail_url(@hello_rail)
    assert_response :success
  end

  test "should update hello_rail" do
    patch hello_rail_url(@hello_rail), params: { hello_rail: { completed: @hello_rail.completed, due_on: @hello_rail.due_on, name: @hello_rail.name } }
    assert_redirected_to hello_rail_url(@hello_rail)
  end

  test "should destroy hello_rail" do
    assert_difference('HelloRail.count', -1) do
      delete hello_rail_url(@hello_rail)
    end

    assert_redirected_to hello_rails_url
  end
end
