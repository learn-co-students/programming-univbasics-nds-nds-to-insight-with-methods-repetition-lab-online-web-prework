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
  names_array = []
  i = 0
  while i < source.count
    names_array << source[i][:name]
    i+=1
  end 
  names_array
end

def total_gross(source)
  dir_hash = directors_totals(source)
  directors = list_of_directors(source)
  totals = 0
  pos = 0
  while pos < directors.length
    totals += dir_hash.fetch(directors[pos])
    pos +=1
  end
  totals  
end


