#encoding:utf-8
require 'sinatra'

before do
  content_type:json
end

get '/' do
  "Hi!"
end

get '/hello/:name' do 
  "Hello, #{params[:name]}:)"
end

get '/test/params/*:*' do |a,b|
  "Key is '#{a}', value is '#{b}'."
end

get '/test/jsonp' do
  'pad(["some1","some2","some3"]);'
end

get '/test/jsonp2' do
  'pad([{"root":{"key1":"yes!","key2":123456}}])'
end


get '/test/jsonp3' do
  'pad([{"k1":"v1"},{"k2":"v2"},{"k3":"v3"}])'
end

