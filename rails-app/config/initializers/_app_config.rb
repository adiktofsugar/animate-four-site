require 'yaml'
require 'ostruct'

config = YAML.load_file( File.join(Rails.root, 'config/config.yml'))
all = config["all"]
env = config[Rails.env.to_s]
AppConfig = all.merge(env)

puts "============"
puts "AppConfig"
AppConfig.each do |key, value|
	puts "#{key} => #{value}"
end
puts "============"

AppConfig = OpenStruct.new(AppConfig)