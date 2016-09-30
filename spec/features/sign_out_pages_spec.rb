require 'rails_helper'

describe "the sign out process" do
  it "sign a user out" do
    user = User.create(:email => "abc@gmail.com", :password => "password")
    visit new_user_session_path
    fill_in 'Email', :with => 'abc@gmail.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log in'
    click_link 'Logout'
    expect(page).to have_content 'Signed out successfully'
  end
end
