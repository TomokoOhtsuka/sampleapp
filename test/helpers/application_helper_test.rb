require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "Ruby on Rails Tutorial Sampleapp"
    assert_equal full_title("Help"), "Help | #{@base_title}"
  end
end