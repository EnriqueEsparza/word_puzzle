require('rspec')
require "pry"
require "capybara/rspec"
require "./app"
require "word_puzzle"
Capybara.app = Sinatra::Application

describe('String#puzzle') do
  it("returns a string with all the vowels replaced by '-' dashes") do
    expect("Hello how are you?".counter()).to(eq("H-ll- h-w -r- y--?"))
  end
end
