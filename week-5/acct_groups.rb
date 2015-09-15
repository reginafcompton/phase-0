# PSEUDOCODE

# INPUT: a list of people
# OUTPUT: smaller lists containing the people from the original list

# define a method that includes a list of people
# make this list (string) into a dictionary-like collection (hash):
# each person will receive a number (from 1-4)

# ask the user for their name
# return "You are in accountability group number X"

# INITIAL SOLUTION



def account_groups
  bobolinks = "Nathan (Shunqian), Caroline, Kim, Jenna, Pamela, Jupiter, Laura, Ovi, Awilda, Celeste, Mike, Eunice, Un, Kristie, Regina, John, Katy, Marcus, Paul, Solomon, Marcel, Aurelio, Hector, Adell, James, Matt, Michael, Peter, Ricky, Kai, Alex, Harmin, Lauren (Jin), CJ, Michawl, Richard, Julian, Ryan, Ian, Alison, Christopher, Lauren (Markzon), Miguel, Lorena, Morgan, Neal, David, Nathan (Park), Landey, Farman, Sam, Armando, Celeen, Salim, Colin, Irina, Jamie, Gary, Lulia, Eric, Micahel, Rosslyn, Aji, Marvy, George, Shawn, Hana, Caitlyn, Nicholas"
  full_array = bobolinks.split(", ")
  sub_arrays = full_array.each_slice(5).to_a

  hash = {}

  hash[sub_arrays[0]] = 1
  hash[sub_arrays[1]] = 2
  hash[sub_arrays[2]] = 3
  hash[sub_arrays[3]] = 4
  hash[sub_arrays[4]] = 5
  hash[sub_arrays[5]] = 6
  hash[sub_arrays[6]] = 7
  hash[sub_arrays[7]] = 8
  hash[sub_arrays[8]] = 9
  hash[sub_arrays[9]] = 10
  hash[sub_arrays[10]] = 11
  hash[sub_arrays[11]] = 12
  hash[sub_arrays[12]] = 13
  hash[sub_arrays[13]] = 14

  p hash


end

account_groups

  # puts "Tell me your name, and I'll tell you about your assigned group."
  # name = gets.chomp
  # puts "Okay #{name}. You are in group....."










