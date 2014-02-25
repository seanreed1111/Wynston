# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#also, note that this is a ruby file, so you can also do the following:
# #country_list = [
#   [ "Germany", 81831000 ],
#   [ "France", 65447374 ],
#   [ "Belgium", 10839905 ],
#   [ "Netherlands", 16680000 ]
# ]

# country_list.each do |name, population|
#   Country.create( name: name, population: population )
# end

#Accessibles from class Course
# class Course < ActiveRecord::Base
#   attr_accessible :title, :description, :intro_video, :syllabus, 
#   :language, :hours, :prerequisites, :start_date, 
#   :end_date, :image_url, :professor_id 

#seed title, description, prerequisites
# course_list = [
#   ["Intro to Travel, Tourism & Hospitality Management", "Introduction to the world of Travel and Tourism", "None"],
#   ["Business Statistics I: MAT 120", "Statistical concepts that ever entrepreneur needs to know.", "Precalculus or MAT 200"],
#   ["Introduction to Information Systems: BTC 200","Introduction to the ways computers are used in a modern business environment","None"],
#   ["Entrepreneurial Finance: BTM 252","A deep dive into some of the common financial pitfalls faced by startups and how to avoid them.","Introduction to Entrepreneurship: BTM 100"],
#   ["Introduction to Computer Programming","Learn the logic of how to write your own programs on a computer.","None"],
#   ["Introduction to Web Design","Learn how HTML, CSS, and Javascript are used to build websites.","None"],
#   ["Introduction to Entrepreneurship","So you want to be an entrepreneur? Get started here!","None"]
# ]

# course_list.each do |title, description, prerequisites|
#   Course.create(title: title, description: description, prerequisites: prerequisites)
# end


User.create(first_name: "first_name")