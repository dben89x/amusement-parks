require 'yaml'
require 'pp'
data = YAML.load(File.read('../data/amusement_parks.yml'))
result = {}
country_state_names = []

data.each do |dat|
  country_state_names << "#{dat[:state]}, #{dat[:country]}"
end
country_state_names.uniq.each do |state|
  result[state] = []
  data.each do |dat|
    result[state] << dat if state.include?(dat[:state])
  end
end
pp result
