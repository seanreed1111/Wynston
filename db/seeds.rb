# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


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

# 5.times {Professor.create(first_name: Faker::Name.first_name, 
#                           last_name: Faker::Name.last_name, 
#                           email: Faker::Internet.email, 
#                           password: "12345678") 
# }

# 5.times {Student.create(first_name: Faker::Name.first_name, 
#                           last_name: Faker::Name.last_name, 
#                           email: Faker::Internet.email, 
#                           password: "12345678") 
# }


# # 5.times {Institution.create(name: Faker::Company.name + " University")}
# 5.times do |n| 
#   CourseModule.create(title: "Module #{n}")
# end

# 5.times do |n|
#   Assessment.create(grade: n*16)
# end

# 5.times {Lecture.create(note: Faker::Lorem.paragraphs)}

# Question.create(question_text: "What is the capital of Pennsylvania?" )
# Question.create(question_text: "What is the capital of North Dakota" )
# Question.create(question_text: "What is the capital of South Dakota?" )
# Question.create(question_text: "What is the capital of Rhode Island?" )
# Question.create(question_text: "What is the capital of Idaho?" )

# Choice.create(answer: "New York City", correct: false )
# Choice.create(answer: "Marboro", correct: false )
# Choice.create(answer: "North Dakota?", correct: false)
# Choice.create(answer: "Providence", correct: true )
# Choice.create(answer: "Boise", correct: true)


Sysadmin.create(first_name: "Sysadmin", email: "sysadmin@sysadmin.com", password: "12345678")

course_list = [
  ["Intro to Travel, Tourism & Hospitality Management", "Introduction to the world of Travel and Tourism", "None"],
  ["Business Statistics I: MAT 120", "Statistical concepts that ever entrepreneur needs to know.", "Precalculus or MAT 200"],
  ["Introduction to Information Systems: BTC 200","Introduction to the ways computers are used in a modern business environment","None"],
  ["Entrepreneurial Finance: BTM 252","A deep dive into some of the common financial pitfalls faced by startups and how to avoid them.","Introduction to Entrepreneurship: BTM 100"],
  ["Introduction to Computer Programming","Learn the logic of how to write your own programs on a computer.","None"],
  ["Introduction to Web Design","Learn how HTML, CSS, and Javascript are used to build websites.","None"],
  ["Introduction to Entrepreneurship","So you want to be an entrepreneur? Get started here!","None"]
]

course_list.each do |title, description, prerequisites|
  Course.create(title: title, description: description, prerequisites: prerequisites)
end

5.times {Professor.create(first_name: Faker::Name.first_name, 
                          last_name: Faker::Name.last_name, 
                          email: Faker::Internet.email, 
                          password: "12345678") 
}

5.times {Student.create(first_name: Faker::Name.first_name, 
                          last_name: Faker::Name.last_name, 
                          email: Faker::Internet.email, 
                          password: "12345678") 
}


# 5.times {Institution.create(name: Faker::Company.name + " University")}
5.times do |n| 
  CourseModule.create(title: "Module #{n}")
end

5.times do |n|
  Assessment.create(grade: n*16)
end

5.times {Lecture.create(note: Faker::Lorem.paragraphs)}

Question.create(question_text: "What is the capital of Pennsylvania?" )
Question.create(question_text: "What is the capital of North Dakota" )
Question.create(question_text: "What is the capital of South Dakota?" )
Question.create(question_text: "What is the capital of Rhode Island?" )
Question.create(question_text: "What is the capital of Idaho?" )

Choice.create(answer: "New York City", correct: false )
Choice.create(answer: "Marboro", correct: false )
Choice.create(answer: "North Dakota?", correct: false)
Choice.create(answer: "Providence", correct: true )
Choice.create(answer: "Boise", correct: true)


# Sysadmin.create(first_name: "Sysadmin", email: "sysadmin@sysadmin.com", password: "12345678")

Student.create(first_name: "Student", email: "student@student.com", password: "12345678" )
Professor.create(first_name: "Professor", email: "professor@professor.com", password:"12345678")

