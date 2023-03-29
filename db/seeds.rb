# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."

########### Users
puts "Cleaning database..."
Job.destroy_all
User.destroy_all
########### Users
puts "Creating users..."
### User 1
maria_gutierrez = {email: "maria_gutierrez@example.com", password: "123456", first_name: "Maria", last_name: "Gutierrez", role: "job_seeker", profile_description: "Energetic and passionate college student working towards a communications degree at Murrayfield School of Marketing. Aiming to use skills in writing, photography, desktop publishing, and public relations at a summer internship at Schuester Digital Media Group." }
first_user = User.create(maria_gutierrez)
first_user.avatar.attach(io: File.open("app/assets/images/maria_gutierrez_photo.jpg"), filename: first_user.last_name, content_type: "image/jpg")
first_user.cvs.attach(io: File.open("app/assets/pdfs/maria_gutierrez_cv.pdf"), filename: first_user.last_name, content_type: "application/pdf")
first_user.save!
###
### User 2
reece_edwards = {email: "reece_edwards@example.com", password: "123456", first_name: "Reece", last_name: "Edwards", role: "job_seeker", profile_description: "Empathic and responsible physician with 10+ years of experience in nurturing patient well-being and facility sustainability. Looking to provide healthcare excellence at The Penshaw Medical Center. At East Forge Medical, spearheaded and maintained Centurion City State accreditation." }
second_user = User.create(reece_edwards)
second_user.avatar.attach(io: File.open("app/assets/images/reece_edwards_photo.jpg"), filename: second_user.last_name, content_type: "image/jpg")
second_user.cvs.attach(io: File.open("app/assets/pdfs/reece_edwards_cv.pdf"), filename: second_user.last_name, content_type: "application/pdf")
second_user.save!
### User 3
francois_mercer = {email: "francois_mercer@example.com", password: "123456", first_name: "Francois", last_name: "Mercer", role: "job_seeker", profile_description: "I am a professional creative designer with 8 years of experience project management, advertisement, and computer aided design. Proven ability to transform client ideas into beautiful, functional design solutions." }
third_user = User.create(francois_mercer)
third_user.avatar.attach(io: File.open("app/assets/images/francois_mercer_photo.jpg"), filename: third_user.last_name, content_type: "image/jpg")
third_user.cvs.attach(io: File.open("app/assets/pdfs/francois_mercer_cv.pdf"), filename: third_user.last_name, content_type: "application/pdf")
third_user.save!
### User 4
sebastian_bennet = {email: "sebastian_bennet@example.com", password: "123456", first_name: "Sebastian", last_name: "Bennet", role: "job_seeker", profile_description: "High-performing psychology major eager to join an innovative organization like Austen Tech, where I can apply my human resources knowledge and skills in a startup environment." }
fourth_user = User.create(sebastian_bennet)
fourth_user.avatar.attach(io: File.open("app/assets/images/sebastian_bennet_photo.jpg"), filename: fourth_user.last_name, content_type: "image/jpg")
fourth_user.cvs.attach(io: File.open("app/assets/pdfs/sebastian_bennet_cv.pdf"), filename: fourth_user.last_name, content_type: "application/pdf")
fourth_user.save!
### User 5
olivia_wilson = {email: "olivia_wilson@example.com", password: "123456", first_name: "Olivia", last_name: "Wilson", role: "job_seeker", profile_description: "Innovative, creative and professional. Specialised in Digital Marketing and SM Marketing. I am a cheerful, ambitious and resilient person. I love my job and achieving milestones working with a team." }
fifth_user = User.create(olivia_wilson)
fifth_user.avatar.attach(io: File.open("app/assets/images/olivia_wilson_photo.jpg"), filename: fifth_user.last_name, content_type: "image/jpg")
fifth_user.cvs.attach(io: File.open("app/assets/pdfs/olivia_wilson_cv.pdf"), filename: fifth_user.last_name, content_type: "application/pdf")
fifth_user.save!


########### Jobs
##########
puts "Creating jobs..."
##########
### Job 1
frontend_job = {user_id: User.last.id, position: "Front End Developer", salary: 3500, level: "Junior", address: "Viktoria-Luise-Platz 5, 10777 Berlin", description: "Front end developer duties include determining the structure and design of web pages, striking a balance between functional and aesthetic design, and ensuring web design is optimized for smartphones" }
first_job = Job.new(frontend_job)
first_job.save!
### Job 2
backend_job = {user_id: User.last.id, position: "Back End Developer", salary: 4500, level: "Senior", address: "Seumestraße 4, 10245 Berlin", description: "Backend developer responsibilities include creating, maintaining, testing, and debugging the entire back end of an application or system. This includes the core application logic, databases, data and application integration, API, and other processes taking place behind the scenes. A highly skilled back end developer is a programmer who knows how to analyze user needs to ensure a positive user experience"}
second_job = Job.new(backend_job)
second_job.save!
### Job 3
project_manager_job = {user_id: User.last.id, position: "Project Manager", salary: 3000, level: "Mid-Level", address: "Viktoria-Luise-Platz 5, 10777 Berlin", description: "A project manager is responsible for planning and overseeing projects within an organisation, from the initial ideation through to completion. They coordinate people and processes to deliver projects on time, within budget and with the desired outcomes aligned to objectives"}
third_job = Job.create(project_manager_job)
third_job.save!
### Job 4
weitress_job = {user_id: User.last.id, position: "Weitress", salary: 3000, level: "-", address: "Sredzkistraße 1, 10435 Berlin", description: "The duties and responsibilities of a Waiter/Waitress include welcoming and seating guests, taking guest orders, communicating them effectively to the kitchen and in addition, memorizing the menu and offering recommendations to upsell appetizers, desserts, or drinks"}
fourth_job = Job.create(weitress_job)
fourth_job.save!
### Job 5
vet_job = {user_id: User.last.id, position: "Vet", salary: 1750, level: "Junior", address: "Zossener Str. 44, 10961 Berlin", description: "A vet treat the injuries and illnesses of pets and other animals with a variety of medical equipment, including surgical tools and x-ray and ultrasound machines. They provide treatment for animals that is similar to the services a physician provides to humans"}
fifth_job = Job.create(vet_job)
fifth_job.save!
### Job 6
secretary_job = {user_id: User.last.id, position: "Secretary", salary: 1250, level: "-", address: "Wolfener Str. 33, 12681 Berlin", description: "A Secretary is a professional who provides behind-the-scenes work for an office. Their tasks include organizing files, preparing documents, managing office supply inventory and scheduling appointments"}
sixth_job = Job.create(secretary_job)
sixth_job.save!
### Job 7
graphic_designer_job = {user_id: User.last.id, position: "Graphic Designer", salary: 2500, level: "Mid-level", address: "Neumagener Str. 49, 13088 Berlin", description: "The Graphic Designer job description includes the entire process of defining requirements, visualizing and creating graphics including illustrations, logos, layouts and photos. You'll be the one to shape the visual aspects of websites, books, magazines, product packaging, exhibitions and more"}
seventh_job = Job.create(graphic_designer_job)
seventh_job.save!
### Job 8
english_teacher_job = {user_id: User.last.id, position: "Graphic Designer", salary: 2500, level: "Mid-level", address: "Gnomenpl. 14, 13088 Berlin", description: "English teachers are qualified professionals who teach reading, writing, and speaking skills to students. They teach students in Elementary, Middle, or High School, and plan and execute lessons according to a pre-set curriculum"}
eighth_job = Job.create(english_teacher_job)
eighth_job.save!
### Job 9
nurse_job = {user_id: User.last.id, position: "Nurse", salary: 1800, level: "-", address: "Baerwaldstraße 16, 10961 Berlin", description: "A Nurse is responsible for supporting Physicians in administering patient care. Their duties include providing the correct dosage of medicine to patients, administering IVs based on their patients’ conditions and monitoring their patients’ vitals to ensure they have the proper blood pressure or heart rate"}
ninth_job = Job.create(nurse_job)
ninth_job.save!
### Job 10
fullstack_job = {user_id: User.last.id, position: "Full Stack Developer", salary: 5000, level: "Senior", address: "Naunynstraße 33, 10999 Berlin", description: "The primary responsibility of a Full Stack Developer includes designing user interactions on websites, developing servers and databases for website functionality and coding for mobile platforms. Particular responsibilities often include: Developing front end website architecture."}
tenth_job = Job.create(fullstack_job)
tenth_job.save!
##########
puts "Finished!"
##########
