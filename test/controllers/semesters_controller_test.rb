require 'test_helper'

class SemestersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get semesters_index_url
    assert_response :success
  end

  test "should get show" do
    get semesters_show_url
    assert_response :success
  end

end
