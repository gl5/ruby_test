require 'sinatra'

before do
  content_type :txt
end

get '/har-har' do
  stream do |out|
    out << "wanna hear a joke about potassium?\n"
    sleep 1500
    out << "K.\n"
    sleep 1500
    out << "i also have one about sodium!\n"
    sleep 1500
    out << "Na\n"
  end
end
