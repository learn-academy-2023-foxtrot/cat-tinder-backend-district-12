# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

tributes = [
    {name: 'Katniss Everdeen', age: 16, hobby: 'shooting up birds and squirrels', image: 'https://live.staticflickr.com/606/21731063948_c2bdd0aef6_b.jpg', district: 'District 12'},
    {name: 'Effie Trinket', age: 31, hobby:'fashion mentor', image:'https://live.staticflickr.com/3901/14940060040_9d2204a5b5_b.jpg', district: 'Capitol'},
    {name: 'Peeta Mellark', age: 16, hobby: 'painting himself with pastry decorations', image: 'https://live.staticflickr.com/5652/21744128755_c3bc5eff19_b.jpg', district:'District 12'}
]
    
    tributes.each do |each_tribute|
        Tribute.create each_tribute
        puts "create tribute #{each_tribute}" 
    end 