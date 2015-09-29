# Virus Predictor

# I worked on this challenge with Rich Leo.
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# "Require_relative" is necessary to import content from a file into another file (from the same directory, i.e., "relative to").
# "Require_relative," by analogy, is a local varible, whereas "require" can be understood as a global one.

require_relative 'state_data'

class VirusPredictor

  # This presents all of our instance variables, it gives them life, brings them into the world. It instantiates the class, or makes a child of the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# This method is used to call the private methods listed below it.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# This method takes three parameters, and determines the number of deaths the number of
# deaths that will occur for each state and prints that information in a string. Conditions are listed based on population density using if/else statement.
  private

  def predicted_deaths
    # # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    number_of_deaths = case @population_density
        when 0...50 then (@population * 0.05).floor
        when 50...100 then (@population * 0.1).floor
        when 100...150 then (@population * 0.2).floor
        when 150...200 then (@population * 0.3).floor
        else (@population * 0.4).floor
      end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    speed = case @population_density
      when 0...50 then 2.5
      when 50...100 then 2
      when 100...150 then 1.5
      when 150...200 then 1
      else 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state




STATE_DATA.each do |state, state_data|
  print VirusPredictor.new(state, state_data[:population_density], state_data[:population]).virus_effects
end



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file? What does require_relative do? How is it different from require?
=begin
See comments above!
=end

#What are some ways to iterate through a hash?
=begin
Several methods can iterate over a collection of data, as in a hash or array or other such structure.
Indeed, iterating over a hash is very much like iterating over an array.
The most basic innumerable for doing so is .each.
All other innumerators build upon .each, e.g., .map, .select, .collect, etc.
In this exercise, my pair and I used .each.
=end

# When refactoring virus_effects, what stood out to you about the variables, if anything?
=begin
The repeated instance variables, stated as parameters, immediately seemed unnecessary, since they are – after all – instance variables, instantiated in the initialize method.
=end
# What concept did you most solidify in this challenge?
=begin
The meaning and purpose of relative_require.
=end