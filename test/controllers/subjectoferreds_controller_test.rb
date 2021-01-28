require 'test_helper'

class SubjectoferredsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subjectoferred = subjectoferreds(:one)
  end

  test "should get index" do
    get subjectoferreds_url, as: :json
    assert_response :success
  end

  test "should create subjectoferred" do
    assert_difference('Subjectoferred.count') do
      post subjectoferreds_url, params: { subjectoferred: { course_id: @subjectoferred.course_id, subject_id: @subjectoferred.subject_id } }, as: :json
    end

    assert_response 201
  end

  test "should show subjectoferred" do
    get subjectoferred_url(@subjectoferred), as: :json
    assert_response :success
  end

  test "should update subjectoferred" do
    patch subjectoferred_url(@subjectoferred), params: { subjectoferred: { course_id: @subjectoferred.course_id, subject_id: @subjectoferred.subject_id } }, as: :json
    assert_response 200
  end

  test "should destroy subjectoferred" do
    assert_difference('Subjectoferred.count', -1) do
      delete subjectoferred_url(@subjectoferred), as: :json
    end

    assert_response 204
  end
end
