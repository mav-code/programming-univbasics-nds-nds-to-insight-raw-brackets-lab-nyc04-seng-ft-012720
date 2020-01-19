$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  totals = {}
  directorcounter = 0
  while directorcounter < directors_database.length do
    total = 0
    moviecounter = 0
    while moviecounter < directors_database[directorcounter][:movies].length do
      total = total + directors_database[directorcounter][:movies][moviecounter][:worldwide_gross]
      moviecounter += 1
    end
      totals[directors_database[directorcounter][:name]] = total
    directorcounter += 1
  end
  p totals
  
  
  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
end
