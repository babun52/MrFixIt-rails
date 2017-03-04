require 'rails_helper'

describe "the add a job process" do
  it "adds a job" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Log In as Worker'
    fill_in 'Email', :with => 'user@epicodus.com'
    fill_in 'Password', :with => 'testtest'
    click_on 'Log in'
    click_on 'Add Your Job'
    fill_in 'Title', :with => 'Test Job.'
    fill_in 'Description', :with => 'Test Description.'
    click_on 'Create Job'
    expect(page).to have_content ("Test Job.")
  end
end
