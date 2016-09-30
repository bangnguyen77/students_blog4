require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => 'abc@gmail.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'New Post'
    attach_file 'Image', 'spec/asset_specs/images/mavatar1.png'
    fill_in 'Title', :with => 'First post'
    fill_in 'Content', :with => 'content'
    click_on 'Create Post'
    expect(page).to have_content 'First post'
  end

  it "gives an error if a field is blank" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => 'abc@gmail.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'New Post'
    fill_in 'Title', :with => ''
    click_on 'Create Post'
    expect(page).to have_content 'error'
  end
end
