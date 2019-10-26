$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  directors = []
  row_index = 0
  while row_index < source.count do
    directors << source[row_index][:name]
    row_index += 1
  end
  directors
end

def total_gross(source)
  directors_gross = directors_totals(source)
  director_array = list_of_directors(source)
  grand_total = 0
  row_index = 0
  
  while row_index < director_array.count do
    grand_total += directors_gross[director_array[row_index]]
    row_index += 1
  end
  grand_total
end


