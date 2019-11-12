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
   index=0 
   director_list=[]
   while index < source.length do
     director_hash = source[index]
     director_name = director_hash[:name]
     director_list.push(director_name)
     index+=1 
   end 
   director_list
end

def total_gross(source)
  index = 0 
  gross_earnings_all_directors = 0 
  while index < source.length do 
    gross_earnings_all_directors += gross_for_director(source[index])
    index += 1 
  end 
  gross_earnings_all_directors
end  
    
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total



