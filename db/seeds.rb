# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
########### Users
User.destroy_all
puts "Creating users..."
### User 1
maria_gutierrez = {email: "maria_gutierrez@example.com", password: "123456", first_name: "Maria", last_name: "Gutierrez", role: "job_seeker", profile_description: "I am flexible, reliable and possess excellent time keeping skills. I am an enthusiastic, self-motivated, reliable, responsible and hard working person." }
first_user = User.new(maria_gutierrez)
first_user.avatar.attach(io: File.open("app/assets/images/maria_gutierrez.jpg"), filename: first_user.last_name, content_type: "image/jpg")
first_user.cvs.attach(io: File.open("app/assets/images/maria_gutierrez_cv.jpg"), filename: first_user.last_name, content_type: "image/jpg")
first_user.save!
###

########### Jobs
Job.destroy_all

puts "Creating jobs..."
### Job 1
frontend_job = {user_id: User.last.id, position: "Front End Developer", salary: 3500, level: "Junior", address: "Viktoria-Luise-Platz 5, 10777 Berlin" }
first_job = Job.new(frontend_job)
first_job.save!
###

puts "Finished!"
##########
