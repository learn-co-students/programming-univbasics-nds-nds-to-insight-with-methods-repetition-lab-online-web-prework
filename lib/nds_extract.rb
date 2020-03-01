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
  directors_list = []
  index = 0
  while index < source.size do
    directors_list << source[index][:name]
    index += 1
  end
  directors_list
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  total_gross = 0
  dir_index = 0
  dir_list = list_of_directors(source) # Here I have an array of direcotr names that givs me the size of array 1
  while dir_index < dir_list.size do
    d = source[dir_index]
    total_gross += gross_for_director(d)

    dir_index += 1
  end


  total_gross
end
