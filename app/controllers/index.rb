require 'json'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/dies' do

  @result = rolling(params[:die])
  content_type :json

  { roll: @result }.to_json
end


def rolling(input)
  if input == "die_6"
    (1..6).to_a.sample
  elsif input == "die_10"
    (1..10).to_a.sample
  elsif input == "die_20"
    (1..20).to_a.sample
  elsif input == "die_100"
    (1..100).to_a.sample
  else
    "You need to roll a die, man!"
  end
end
