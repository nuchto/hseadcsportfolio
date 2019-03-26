# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke




Group.create([
  {
    name: 'Поток 2020',
    year_start: '2016',
    year_end: '2020',
    level_quantity: '4',
    group_id: '1'
  },{
    name: 'Ночь нежна',
    year_start: '2017',
    year_end: '2021',
    level_quantity: '3',
    group_id: '2'
  },{
    name: 'Третий отряд',
    year_start: '2018',
    year_end: '2022',
    level_quantity: '2',
    group_id: '3'
  },{
    name: 'Новая кровь',
    year_start: '2019',
    year_end: '2023',
    level_quantity: '1',
    group_id: '4'
  }
  ])



Person.create([
  {
    # group_id:
    first_name: 'Анна',
    last_name: 'Ковыляева'
  },{
    first_name: 'Иван',
    last_name: 'Иванов'
  }
  ])

  def create_user(user)
  password = 'testtest'

  User.create(
    email:    user[:email],
    role:     user[:role],
    password: password,
    password_confirmation: password
  )
end
