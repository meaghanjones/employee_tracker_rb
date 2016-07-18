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

describe('adding a new employee', {:type => :feature}) do
  it('allows a user to add an employee to a division') do
    visit('/')
    click_link('Add new employee')
    fill_in('name', :with =>'Jane')
    click_button('Add employee')
    expect(page).to have_content('Jane')
  end
end
