require('sinatra')
require('sinatra/reloader')
require('./lib/coins')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/change') do
  @change = params.fetch('change').to_i().coins()
  erb(:change)
end
