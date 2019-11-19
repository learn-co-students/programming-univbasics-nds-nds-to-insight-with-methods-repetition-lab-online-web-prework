require 'pry'
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
  row = 0
  directors_name = []
while row < source.length do 

  directors = source[row][:name]
 directors_name << directors
  row += 1
end

p directors_name
end

def total_gross(source)
  row_index = 0 
  grand_gross = 0  
while row_index < source.length do 
  movies = source[row_index][:movies]
 
  element_index = 0 
  while element_index < movies.length do 
  grand_gross += movies[element_index][:worldwide_gross]
    
  element_index += 1 
end

row_index += 1 
end
 p grand_gross
end

 