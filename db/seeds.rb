# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "Clearing old data..."
User.destroy_all
Bookshelf.destroy_all
Book.destroy_all
BookshelfBook.destroy_all


    user1 = User.create!(
        {first_name: 'Sydney', last_name: 'Chase', user_name: 'Indi', email: 'theindigoroom2@gmail.com'}
        )
    user2 = User.create!(
        {first_name: 'Jennifer', last_name: 'Johnson', user_name: 'JenJohn', email: 'jenjon@emailexample.com'}
        )
    user3 = User.create!(
        {first_name: 'Bob', last_name: 'Daily', user_name: 'Beeto', email: 'beeto@emailexample.com'}
        )
    user4 = User.create!(
        {first_name: 'Yvonne', last_name: 'Gist', user_name: 'Vonnie', email: 'vonie@emailexample.com'}
        )


    bookshelf1 = Bookshelf.create!(
    {name: 'The Indigo Room Bookshelf', description: 'Here you can find a list of books we have either read or reccommended on the show.', user_id: user1.id }
    )
    bookshelf2 = Bookshelf.create!(
    {name: "Jennifer's Beautiful Books", description: 'I love my books. I love sharing great books that I have read with others. Listed are some of my favorites. Will be adding more.', user_id: user2.id }
    )
    bookshelf3 = Bookshelf.create!(
    {name: 'Random', description: 'Random books I like.', user_id: user3.id}
    )
    bookshelf4 = Bookshelf.create!(
    {name: 'DIY Books', description: 'I like to create interior designs and these are the books I love for inspiration.', user_id: user4.id}
    )


mind_garden_of_eden = Book.create!(
    {img_url: 'https://sydneychase.files.wordpress.com/2012/03/cover-mind-garden-of-eden.jpg',
title: 'Mind Garden of Eden', author: 'Sydney Chase', year_published: 2011, 
description: 'Re-Conditioning Your Mind to start to accept, express and Imagine your Reality. We should first condition our minds to accept new ideas, thoughts and beliefs. Re-conditioning our minds is as necessary as breathing, eating and sleeping.  This book was written based on the writings of Neville Goddard, The Bible and The Metaphysical Bible reference by Charles Fillmore.',
read: [true, false]}
)

spiritual_growth = Book.create!(
    {img_url: 'https://sydneychase.files.wordpress.com/2021/09/books__spiritual_growth.jpg',
title: 'Spiritual Growth', author: 'Sanya Roman', year_published: 1987, 
description: 'Spiritual Growth teaches you how to be your Higher Self',
read: [true, false]}
)

resurrection = Book.create!(
    {img_url: 'https://sydneychase.files.wordpress.com/2021/09/9780875168258.jpg',
title: 'Resurrection', author: 'Neville Goddard', year_published: 1966, 
description: 'Feeling is the Secret. Chankging your thoughts and your imagination can indeed change your reality!',
read: [true, false]}
)

the_celestine_prophecy = Book.create!(
    {img_url: 'https://sydneychase.files.wordpress.com/2021/09/thecelestineprophecy.jpg',
title: 'The Celestine Prophecy', author: 'James Redfield', year_published: 1993, 
description: '.The Celestine Prophecy contains secrets that are currently changing the world.',
read: [true, false]}
)

the_kinfolk_home = Book.create!(
    {img_url: 'https://sydneychase.files.wordpress.com/2021/09/9781579656652_3d.png',
title: 'The Kinfolk Home Interiors for Slow Living', author: 'Nathan Williams', year_published: 2015, 
description: "Slow living: cultivating community, simplifying our lives and reclaiming time for what matters most.",
read: [true, false]}
)

bookshelf1.books << [mind_garden_of_eden, resurrection]
bookshelf2.books << [spiritual_growth]
bookshelf3.books << [resurrection]
bookshelf4.books << [the_kinfolk_home]
 

puts "Books, Bookshelf & Et all seeded"

puts "Seeded"