require 'test_helper'

class PapersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get papers_index_url
    assert_response :success
  end

end
