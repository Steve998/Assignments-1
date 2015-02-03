=begin
This is assignment 18 and is due on Feb 04, 2015.

http://developer.rottentomatoes.com/
Use Rotten Tomato's movie querying script to create a command line app which prompts the user for a movie title
Using the entered movie title, search via the API for the movie's synopsis and output to the user
If more than one movie comes back, show all the movie title matches with their synopsis
=end

#!/usr/bin/ruby

  # Including some libraries.
  require 'active_support'
  require 'active_support/all'
  require 'net/http'
  require 'json'

  # This is the base of the search URL; it won't change no matter what the user enters.
  QUERY_URL = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=5kg6gyrukama6srcngyfgw4k'

  # Including a loop just for fun. Starting the loop after the QUERY_URL so I don't get the "warning: already initialized constant QUERY_URL" message.
  loop do

  puts "Let's find a good movie. Please enter a one-word title now.\n\n"
  puts "(I haven't figured out how to accommodate titles that contain spaces, but I'm working on it.)"

  title = gets.chomp

  puts "Great, I'll look that up. This could take a moment.\n\n"

  # This defines the search URL as the base PLUS the API's required query characters PLUS the user's search term.
  uri = URI(QUERY_URL + "&q=#{title}")
  # This defines my var raw_movie_json as receiving var uri from the website.
  raw_movie_json = Net::HTTP.get(uri)
  # This parses the raw JSON and saves as my var parsed_movie_json.
  parsed_movie_json = JSON.parse(raw_movie_json)["movies"]

  # Still working on this idea. Right now it's a dud because I'm not pulling the title info correctly.
  if parsed_movie_json.size > 1
  #if parsed_movie_json["title"].length > 1
    puts "Several movies contain your search term. I'll list them all.\n\n"
  end
  #
  #  puts "Hmm ... looks like there's more than one match to what you typed in."
  #  puts


  # This iterates over the parsed info and displays the title and synopsis for each hit.
  parsed_movie_json.each do |category|

    # If the user's search comes up blank.
    if category["title"].blank?
      puts "Hmm. I can't find anything like that. Did you mistype?\n\n"
    # If the user's search finds a match.
    else puts category["title"]
    end

    # If a movie doesn't have a synopsis, this displays alternate info.
    if category["synopsis"].blank?
      puts "Sorry, no synopsis is available for this movie.\n\n"
      puts "Instead I'll give you the year and rating to help you differentiate among similar titles.\n\n"
      puts category["year"]
      puts category["mpaa_rating"]
    # If there is a synopsis, this displays it.
    else puts category["synopsis"]
    end

  end
    # This restarts or ends the loop.
    puts "\nWant to search again? y/n\n\n"
    again = gets.chomp

      if again == "n"
        puts "Okay, maybe another time. Bye!"
        break
      end

  end
