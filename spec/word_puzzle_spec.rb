require('rspec')
require "pry"
require "capybara/rspec"
require "./app"
require "word_puzzle"
Capybara.app = Sinatra::Application

# describe('Fixnum#counter') do
#   it("returns change with the least amount of coins") do
#     expect((3).counter()).to(eq([0,0,0,3]))
#   end
# end
