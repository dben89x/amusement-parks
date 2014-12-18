require 'yaml'
require 'pp'
data = YAML.load(File.read('../data/amusement_parks.yml'))
result = {}
country_names = []

data.each do |dat|
  country_names << dat[:country]
end
country_names.uniq.each do |country|
  result[country] = []
  data.each do |dat|
    result[country] << dat if dat[:country] == country
  end
end
pp result
