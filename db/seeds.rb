# encoding: UTF-8
#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
   lecturer = Lecturer.create([{ name: 'Müller' },
                               { name: 'Kollerboll' },
                               { name: 'Schulz' },
                               { name: 'Meier' },
                               { name: 'Keltzo' },
                               { name: 'Winniefred' },
                               { name: 'Mauser' },
                               { name: 'Franken' },
                               { name: 'Onama' },
                               { name: 'Tierse' },
                               { name: 'Akkana' }])
   course = Course.create([{ name: 'GdI' },
                           { name: 'OOP' },
                           { name: 'RECHT' },
                           { name: 'RA' },
                           { name: 'TE' },
                           { name: 'PIS' },
                           { name: 'KSP' },
                           { name: 'BS' },
                           { name: 'TWA' },
                           { name: 'IBS' },
                           { name: 'RN' }])
   semester = Semester.create([{ name: 'SS00' }, { name: 'WS00' },
                               { name: 'SS01' }, { name: 'WS01' },
                               { name: 'SS02' }, { name: 'WS02' },
                               { name: 'SS03' }, { name: 'WS03' },
                               { name: 'SS04' }, { name: 'WS04' },
                               { name: 'SS05' }, { name: 'WS05' },
                               { name: 'SS06' }, { name: 'WS06' },
                               { name: 'SS07' }, { name: 'WS07' },
                               { name: 'SS08' }, { name: 'WS08' },
                               { name: 'SS09' }, { name: 'WS09' },
                               { name: 'SS10' }, { name: 'WS10' },
                               { name: 'SS11' }, { name: 'WS11' },
                               { name: 'SS99' }, { name: 'WS99' },
                               { name: 'SS98' }, { name: 'WS98' },
                               { name: 'SS97' }, { name: 'WS97' },
                               { name: 'SS96' }, { name: 'WS96' }])
