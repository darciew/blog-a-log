require 'rails_helper'
require 'support/home'

feature "A user can visit the homepage" do
let(:home) {Home.new}
 scenario "Can see welcome text", :js => true do
  home.visit_homepage
  expect(page).to have_content("Welcome To My Blog")
 end
end
