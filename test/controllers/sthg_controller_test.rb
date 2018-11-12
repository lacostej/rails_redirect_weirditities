require 'test_helper'

class SthgControllerTest < ActionDispatch::IntegrationTest
  test "should get page1,page2" do
    get sthg_page1,page2_url
    assert_response :success
  end

end
