require 'test_helper'

class LessonClassControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lesson_class_index_url
    assert_response :success
  end

end
