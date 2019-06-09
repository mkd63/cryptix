require 'test_helper'

class AddQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get add_questions_index_url
    assert_response :success
  end

end
