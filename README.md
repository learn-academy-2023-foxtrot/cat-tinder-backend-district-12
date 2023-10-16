## Hunger Games Tinder

As a developer, I can add a resource for Cat that has a name, an age, what the cat enjoys doing, and an image, and district. 

generate the resource 
`rb
rails g resource Tribute name:string age:integer hobby:text image:text district:string
`

As a developer, I can create a RSpec testing suite in my Rails application.

`rb 
rails db:migrate 
rspec spec 
rspec spec/requests/tributes_spec.rb
`

As a developer, I can add cat seeds to the `seeds.rb` file.
db/seeds.rb
`rb 
tributes = [
    {name: 'Katniss Everdeen', age: 16, hobby: 'shooting up birds and squirrels', image: 'https://live.staticflickr.com/606/21731063948_c2bdd0aef6_b.jpg', district: 'District 12'},
    {name: 'Effie Trinket', age: 31, hobby:'fashion mentor', image:'https://live.staticflickr.com/3901/14940060040_9d2204a5b5_b.jpg', district: 'Capitol'},
    {name: 'Peeta Mellark', age: 16, hobby: 'painting himself with pastry decorations', image: 'https://live.staticflickr.com/5652/21744128755_c3bc5eff19_b.jpg', district:'District 12'}
]


`

As a developer, I can run the rails command to add cats to database.'
