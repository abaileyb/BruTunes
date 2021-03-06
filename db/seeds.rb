# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all #<- use this so you don't get duplicates 
Artist.create! name: "Two Door Cinema Club", bio: "Two Door Cinema Club are a Northern Irish indie rock band from Bangor, Donaghadee, County Down, formed in 2007. The band consists of Alex Trimble, Sam Halliday, and Kevin Baird."
Artist.create! name: "The Killers", bio: "The Killers are an American rock band formed in Las Vegas, Nevada in 2001, by Brandon Flowers and Dave Keuning. Mark Stoermer and Ronnie Vannucci Jr. would complete the current line-up of the band in 2002. The name The Killers is derived from a logo on the bass drum of a fictitious band, portrayed in the music video for the New Order song Crystal."
Artist.create! name: "Walk The Moon", bio: "Walk the Moon is an American Indie rock band based in Cincinnati, Ohio. Lead singer Nicholas Petricca started the band in 2008 and went through several member changes before finally coming together with current members Kevin Ray, Sean Waugaman, and Eli Maiman in 2010.[1] The band derives their name from the song Walking on the Moon by The Police."
Artist.create! name: "Zedd", bio: "Anton Zaslavski, better known by his stage name Zedd, is a Russian-German musician, music producer and DJ."
Artist.create! name: "Alesso", bio: "Alessandro Lindblad, commonly known by his stage name Alesso, is a Swedish DJ and electronic dance music producer. He has worked with numerous EDM artists, including Avicii, OneRepublic, Calvin Harris, Usher, David Guetta, and Sebastian Ingrosso."