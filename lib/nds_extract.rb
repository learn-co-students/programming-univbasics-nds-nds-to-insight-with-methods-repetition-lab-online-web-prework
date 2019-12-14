$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
    # binding.pry
  end
  # binding.pry
  result
  # returns updated HASH with dir => total_grosses
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
  # returns total gross for directors INTEGER
end

def list_of_directors(source)
  # Write this implementation
  d = 0
  dir_list = []
  while d < source.length do
    dir_list.push(source[d][:name])
    d += 1
  end
  dir_list
  # returns ARRAY of directors' names
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
  d = 0
  total_gross = 0
  while d < list_of_directors(source).length do
    total_gross += directors_totals(source)[list_of_directors(source)[d]]
    d += 1
  end
  total_gross
end


