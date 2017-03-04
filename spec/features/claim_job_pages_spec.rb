require 'rails_helper'

describe "the claim a job process" do
  it "claims a job", js: true do
    worker = FactoryGirl.create(:worker)
    job = FactoryGirl.create(:job)
    visit root_path
    click_link 'See All Jobs'
    click_link job.title
    click_on 'click here to claim it now'
    expect(page).to have_content ("You've successfully claimed this job.")
  end
end
