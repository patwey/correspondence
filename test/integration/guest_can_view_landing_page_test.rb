require 'test_helper'

class GuestCanViewLandingPageTest < ActionDispatch::IntegrationTest
  test "guest can view landing page" do
    visit "/"

    within ".content" do
      assert page.has_css? ".title", "Correspondence"
      assert page.has_link? "Get Started"
    end
  end
end
