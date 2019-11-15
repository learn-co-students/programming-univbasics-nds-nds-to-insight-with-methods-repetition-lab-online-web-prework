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
  # Write this implementation
  index = 0
  list = [{}]
  while index < source.length do 
    list[index] = source[index][:name]
    index += 1
  end   
  pp list
end

def total_gross(source)
 dir_names = list_of_directors(source)   
 gross = 0 
 i = 0 
 money = directors_totals(source)
 while i < dir_names.length do 
  dir = dir_names[i]
  gross += money[dir]
  i += 1 
  end 
  gross
end


