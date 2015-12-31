require 'test_helper'

class GuestCanViewLandingPageTest < ActionDispatch::IntegrationTest
  test "guest can view landing page" do
    description = "Communicate with one correspondent, once a day."

    visit "/"

    within ".content" do
      assert page.has_css? ".title", "Correspondence"
      assert page.has_css? ".description", description
      assert page.has_link? "Get Started"
    end
  end
end
