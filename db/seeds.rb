# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!(
  [
    {
      name: 'Dystopian'
    },
    {
      name: 'Fiction'
    },
    {
      name: 'Classic'
    },
    {
      name: 'Fictional Biography'
    },
    {
      name: 'Fantasy'
    },
    {
      name: 'Short Story'
    },
    {
      name: 'Science Fiction'
    }
  ]
)
Product.create(
  [
    {
      title: '1984',
      author: 'George Orwell',
      rating: '5',
      category_ids: [1, 2, 3]
    },
    {
      title: 'Hamlet',
      author: 'William Shakespeare (Shakespeare or not Shakespeare that is the question!)',
      rating: '5',
      category_ids: [3]
    },
    {
      title: 'The Glass Bead Game',
      author: 'Hermann Hesse',
      rating: '5+',
      category_ids: [2, 4, 5]
    },
    {
      title: 'The Immortal',
      author: 'Jorge Luis Borges',
      rating: 'BEYOUND IMAGINATION',
      category_ids: [2, 6]
    },
    {
      title: 'The Time Machine',
      author: 'H. G. Wells',
      rating: '5',
      category_ids: [2, 7]
    },
    {
      title: 'Brave New World',
      author: 'Aldous Huxley',
      rating: '4',
      category_ids: [1, 2, 7]
    }
  ]
);
