require 'test_helper'

class SchoolyearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schoolyear = schoolyears(:one)
  end

  test "should get index" do
    get schoolyears_url, as: :json
    assert_response :success
  end

  test "should create schoolyear" do
    assert_difference('Schoolyear.count') do
      post schoolyears_url, params: { schoolyear: { half: @schoolyear.half, status: @schoolyear.status, year: @schoolyear.year } }, as: :json
    end

    assert_response 201
  end

  test "should show schoolyear" do
    get schoolyear_url(@schoolyear), as: :json
    assert_response :success
  end

  test "should update schoolyear" do
    patch schoolyear_url(@schoolyear), params: { schoolyear: { half: @schoolyear.half, status: @schoolyear.status, year: @schoolyear.year } }, as: :json
    assert_response 200
  end

  test "should destroy schoolyear" do
    assert_difference('Schoolyear.count', -1) do
      delete schoolyear_url(@schoolyear), as: :json
    end

    assert_response 204
  end
end
