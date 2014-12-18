require 'yaml'
require 'pp'
data = YAML.load(File.read('../data/amusement_parks.yml'))
result = {}

data.each do |dat|
  result[dat[:id]] = dat
end

pp result
