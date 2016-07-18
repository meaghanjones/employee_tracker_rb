require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new division', {:type => :feature}) do
  it('allows a user to add a division') do
    visit('/')
    click_link('Add new division')
    fill_in('name', :with =>'HR')
    click_button('Add division')
    expect(page).to have_content('HR')
  end
end
