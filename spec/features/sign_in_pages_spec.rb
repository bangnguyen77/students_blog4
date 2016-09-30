require 'rails_helper'

describe "the sign in process" do
  it "sign a user in" do
    user = User.create(:email => "abc@gmail.com", :password => "password")
    visit new_user_session_path
    fill_in 'Email', :with => 'abc@gmail.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end
end
