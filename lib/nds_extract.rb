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
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross } #Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  directors_totals = {"Stephen Spielberg"=>1357566430,
        "Russo Brothers"=>2281002470,
        "James Cameron"=>2571020373,
        "Spike Lee"=>256624217,
        "Wachowski Siblings"=>806180282,
        "Robert Zemeckis"=>1273838385,
        "Quentin Tarantino"=>662738268,
        "Martin Scorsese"=>636812242,
        "Francis Ford Coppola"=>509719258}
end
# 2. list_of_directors: names provides an Array of directors names (use
  #
  def
  Director_name = ["Stephen Spielberg",
        "Russo Brothers",
        "James Cameron,
        "Spike Lee",
        "Wachowski Siblings",
        "Robert Zemeckis",
        "Quentin Tarantino",
        "Martin Scorsese",
        "Francis Ford Coppola"]
 
  def Director_name(nds, row_index, column_index)
  coordinate_total = 0
  inner_len = nds[row_index][column_index].length
  inner_index = 0
  while inner_index < inner_len do
    coordinate_total += nds[row_index][column_index][inner_index][:price]
    inner_index += 1
  end
  coordinate_total
end


