require 'test_helper'

class SchoolclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schoolclass = schoolclasses(:one)
  end

  test "should get index" do
    get schoolclasses_url, as: :json
    assert_response :success
  end

  test "should create schoolclass" do
    assert_difference('Schoolclass.count') do
      post schoolclasses_url, params: { schoolclass: { calendar: @schoolclass.calendar, classroom: @schoolclass.classroom, name: @schoolclass.name, numberofstudents: @schoolclass.numberofstudents, subject_id: @schoolclass.subject_id, teacher_id: @schoolclass.teacher_id } }, as: :json
    end

    assert_response 201
  end

  test "should show schoolclass" do
    get schoolclass_url(@schoolclass), as: :json
    assert_response :success
  end

  test "should update schoolclass" do
    patch schoolclass_url(@schoolclass), params: { schoolclass: { calendar: @schoolclass.calendar, classroom: @schoolclass.classroom, name: @schoolclass.name, numberofstudents: @schoolclass.numberofstudents, subject_id: @schoolclass.subject_id, teacher_id: @schoolclass.teacher_id } }, as: :json
    assert_response 200
  end

  test "should destroy schoolclass" do
    assert_difference('Schoolclass.count', -1) do
      delete schoolclass_url(@schoolclass), as: :json
    end

    assert_response 204
  end
end
