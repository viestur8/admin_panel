# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Cohort.create(title: 'Summer', start_date: DateTime.new(2009,9,1,17), students_in_cohort: 20)
Cohort.create(title: 'Autumn', start_date: DateTime.new(2009,9,1,17), students_in_cohort: 20)

Student.create(first_name: 'Sparky', last_name: 'Pitbull', age: 17, cohort_id: 1 )
Student.create(first_name: 'Jimmy', last_name: 'Hoffa', age: 68, cohort_id: 1 )
Student.create(first_name: 'Dicky', last_name: 'Mores', age: 27, cohort_id: 1 )
