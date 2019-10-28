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

  i=0 
  while directors.length < source.length
    directors.push(source[i][:name])
    i += 1
  end 
  directors


# {"Stephen Spielberg"	=>1357566430,
# "Russo Brothers"		=>2281002470,
# "James Cameron"		=>2571020373,
# "Spike Lee"		=>256624217,
# "Wachowski Siblings"	=>806180282,
# "Robert Zemeckis"		=>1273838385,
# "Quentin Tarantino"	=>662738268,
# "Martin Scorsese"		=>636812242,
# "Francis Ford Coppola"	=>509719258}



end

def total_gross(source)
  
  directors_totals(source)
  
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
end


