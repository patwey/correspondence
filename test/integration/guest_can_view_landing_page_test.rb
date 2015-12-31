require 'test_helper'

class GuestCanViewLandingPageTest < ActionDispatch::IntegrationTest
  test "guest can view landing page" do
    visit "/"

    within ".content" do
      assert page.has_css? ".title", "Correspondence"
    end
  end
end
