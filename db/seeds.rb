# encoding: UTF-8
#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
   lecturer = Lecturer.create([{ name: 'Müller' }, { name: 'Kollerboll' }, { name: 'Akkana' }])
   course = Course.create([{ name: 'GdI' }, { name: 'OOP' }, { name: 'RN' }])
   semester = Semester.create([{ name: 'SS00' }, { name: 'WS00' }, { name: 'SS01' }, { name: 'WS01' }, { name: 'SS02' }, { name: 'WS02' }])
