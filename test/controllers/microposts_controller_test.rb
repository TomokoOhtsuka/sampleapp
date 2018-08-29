require 'test_helper'

class MicropostsControllerTest < ActionDispatch::IntegrationTest
  
  test "should redirect create when not logged in" do
    assert_no_difference 'Micropost.count' do
    post microposts_path, params: { micropost: { content: "Lorem ipsum" } }
    assert_redirected_to login_url
    end
  end
  
  test "should redirect destroy when not logged in" do
    assert_no_difference 'Micropost.count' do
      delete micropost_path(@micropost)
    end
    assert_redirected_to login_url
  end
end
