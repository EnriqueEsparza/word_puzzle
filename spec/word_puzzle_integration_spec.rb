require('capybara/rspec')
require('./app')
Capybara.app == Sinatra::Application
set(:show_exceptions, false)

describe('path for word_puzzle', {:type => :feature}) do
  it('processes the user string and replaces each vowel with "-" dash on a separate page') do
    visit('/')
    fill_in('sentence', :with => 'The cat in the hat')
    click_button('Send')
    expect(page).to have_content('Th- c-t -n th- h-t')
  end
end
