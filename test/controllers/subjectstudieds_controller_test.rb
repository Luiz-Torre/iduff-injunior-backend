require 'test_helper'

class SubjectstudiedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subjectstudied = subjectstudieds(:one)
  end

  test "should get index" do
    get subjectstudieds_url, as: :json
    assert_response :success
  end

  test "should create subjectstudied" do
    assert_difference('Subjectstudied.count') do
      post subjectstudieds_url, params: { subjectstudied: { student_id: @subjectstudied.student_id, subject_id: @subjectstudied.subject_id } }, as: :json
    end

    assert_response 201
  end

  test "should show subjectstudied" do
    get subjectstudied_url(@subjectstudied), as: :json
    assert_response :success
  end

  test "should update subjectstudied" do
    patch subjectstudied_url(@subjectstudied), params: { subjectstudied: { student_id: @subjectstudied.student_id, subject_id: @subjectstudied.subject_id } }, as: :json
    assert_response 200
  end

  test "should destroy subjectstudied" do
    assert_difference('Subjectstudied.count', -1) do
      delete subjectstudied_url(@subjectstudied), as: :json
    end

    assert_response 204
  end
end
