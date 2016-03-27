require 'rails_helper'

RSpec.feature "User Signup", type: :feature do
  before do
    @john = User.new(email: 'john@example.com', password: 'password')
  end

  scenario "with valid credentials" do
    visit '/'
    click_link 'Sign up'
    fill_in 'Email', with: @john.email
    fill_in 'Password', with: @john.password
    fill_in 'Password confirmation', with: @john.password
    click_button 'Sign up'

    expect(page).to have_content('You have signed up successfully.')
  end
end
