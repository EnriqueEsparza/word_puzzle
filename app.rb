require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  sentence = params.fetch('sentence')
  @puzzled_string = sentence.puzzle
  erb(:results)
end
