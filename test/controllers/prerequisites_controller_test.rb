require 'test_helper'

class PrerequisitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prerequisite = prerequisites(:one)
  end

  test "should get index" do
    get prerequisites_url, as: :json
    assert_response :success
  end

  test "should create prerequisite" do
    assert_difference('Prerequisite.count') do
      post prerequisites_url, params: { prerequisite: { subject_id: @prerequisite.subject_id } }, as: :json
    end

    assert_response 201
  end

  test "should show prerequisite" do
    get prerequisite_url(@prerequisite), as: :json
    assert_response :success
  end

  test "should update prerequisite" do
    patch prerequisite_url(@prerequisite), params: { prerequisite: { subject_id: @prerequisite.subject_id } }, as: :json
    assert_response 200
  end

  test "should destroy prerequisite" do
    assert_difference('Prerequisite.count', -1) do
      delete prerequisite_url(@prerequisite), as: :json
    end

    assert_response 204
  end
end
