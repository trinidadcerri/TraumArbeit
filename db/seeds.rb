# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

########### Seed file
puts "Cleaning database..."
Job.destroy_all
User.destroy_all
########### Job Seekers
puts "Creating job seekers..."
### Jobseeker 1
maria_gutierrez = {email: "maria_gutierrez@example.com", password: "123456", first_name: "Maria", last_name: "Gutierrez", job_seeker: true, profile_description: "Energetic and passionate college student working towards a communications degree at Murrayfield School of Marketing. Aiming to use skills in writing, photography, desktop publishing, and public relations at a summer internship at Schuester Digital Media Group.", nickname: "Maria", profesion: "Student", location: "Berlin" }
first_jobseeker = User.create(maria_gutierrez)
first_jobseeker.avatar.attach(io: File.open("app/assets/images/maria_gutierrez_photo.jpg"), filename: first_jobseeker.last_name, content_type: "image/jpg")
first_jobseeker.cvs.attach(io: File.open("app/assets/pdfs/maria_gutierrez_cv.pdf"), filename: first_jobseeker.last_name, content_type: "application/pdf")
first_jobseeker.save!
###
### Jobseeker 2
reece_edwards = {email: "reece_edwards@example.com", password: "123456", first_name: "Reece", last_name: "Edwards", job_seeker: true, profile_description: "Empathic and responsible physician with 10+ years of experience in nurturing patient well-being and facility sustainability. Looking to provide healthcare excellence at The Penshaw Medical Center. At East Forge Medical, spearheaded and maintained Centurion City State accreditation.", nickname: "Reece", profesion: "Physician", location: "Berlin" }
second_jobseeker = User.create(reece_edwards)
second_jobseeker.avatar.attach(io: File.open("app/assets/images/reece_edwards_photo.jpg"), filename: second_jobseeker.last_name, content_type: "image/jpg")
second_jobseeker.cvs.attach(io: File.open("app/assets/pdfs/reece_edwards_cv.pdf"), filename: second_jobseeker.last_name, content_type: "application/pdf")
second_jobseeker.save!
### Jobseeker 3
francois_mercer = {email: "francois_mercer@example.com", password: "123456", first_name: "Francois", last_name: "Mercer", job_seeker: true, profile_description: "I am a professional creative designer with 8 years of experience project management, advertisement, and computer aided design. Proven ability to transform client ideas into beautiful, functional design solutions.", nickname: "Francois", profesion: "Designer", location: "Berlin" }
third_jobseeker = User.create(francois_mercer)
third_jobseeker.avatar.attach(io: File.open("app/assets/images/francois_mercer_photo.jpg"), filename: third_jobseeker.last_name, content_type: "image/jpg")
third_jobseeker.cvs.attach(io: File.open("app/assets/pdfs/francois_mercer_cv.pdf"), filename: third_jobseeker.last_name, content_type: "application/pdf")
third_jobseeker.save!
### Jobseeker 4
sebastian_bennet = {email: "sebastian_bennet@example.com", password: "123456", first_name: "Sebastian", last_name: "Bennet", job_seeker: true, profile_description: "High-performing psychology major eager to join an innovative organization like Austen Tech, where I can apply my human resources knowledge and skills in a startup environment.", nickname: "Sebastian", profesion: "Psychology", location: "Berlin" }
fourth_jobseeker = User.create(sebastian_bennet)
fourth_jobseeker.avatar.attach(io: File.open("app/assets/images/sebastian_bennet_photo.jpg"), filename: fourth_jobseeker.last_name, content_type: "image/jpg")
fourth_jobseeker.cvs.attach(io: File.open("app/assets/pdfs/sebastian_bennet_cv.pdf"), filename: fourth_jobseeker.last_name, content_type: "application/pdf")
fourth_jobseeker.save!
### Jobseeker 5
olivia_wilson = {email: "olivia_wilson@example.com", password: "123456", first_name: "Olivia", last_name: "Wilson", job_seeker: true, profile_description: "Innovative, creative and professional. Specialised in Digital Marketing and SM Marketing. I am a cheerful, ambitious and resilient person. I love my job and achieving milestones working with a team.", nickname: "Olivia", profesion: "Digital Marketing", location: "Berlin" }
fifth_jobseeker = User.create(olivia_wilson)
fifth_jobseeker.avatar.attach(io: File.open("app/assets/images/olivia_wilson_photo.jpg"), filename: fifth_jobseeker.last_name, content_type: "image/jpg")
fifth_jobseeker.cvs.attach(io: File.open("app/assets/pdfs/olivia_wilson_cv.pdf"), filename: fifth_jobseeker.last_name, content_type: "application/pdf")
fifth_jobseeker.save!
### Jobseeker 6
olga_iuzvyshyna = {email: "olga_Iuzvyshyna@example.com", password: "123456", first_name: "Olga", last_name: "Iuzvyshyna", job_seeker: true, profile_description: "With 9 years of working as a marketing manager, I have a responsible self-motivated approach to any task I undertake. I am excellent in working with other across a wide variety of backgrounds, and believe in clear and efficient communication.", nickname: "Olga", profesion: "Full-Stack Developer", location: "Berlin" }
sixth_jobseeker = User.create(olga_iuzvyshyna)
sixth_jobseeker.avatar.attach(io: File.open("app/assets/images/Olga_Iuzvyshyna_photo.jpg"), filename: sixth_jobseeker.last_name, content_type: "image/jpg")
sixth_jobseeker.cvs.attach(io: File.open("app/assets/pdfs/Olga_Iuzvyshyna_cv.pdf"), filename: sixth_jobseeker.last_name, content_type: "application/pdf")
sixth_jobseeker.save!
### Jobseeker 7
trinidad_cerri = {email: "trinidad_cerri@example.com", password: "123456", first_name: "Maria Trinidad", last_name: "Cerri", job_seeker: true, profile_description: "Innovative, creative and professional. Specialised in Digital Marketing and SM Marketing. I am a cheerful, ambitious and resilient person. I love my job and achieving milestones working with a team.", nickname: "Olivia", profesion: "Digital Marketing", location: "Berlin" }
seventh_jobseeker = User.create(trinidad_cerri)
seventh_jobseeker.avatar.attach(io: File.open("app/assets/images/CERRI - PHOTO.jpg"), filename: seventh_jobseeker.last_name, content_type: "image/jpg")
seventh_jobseeker.cvs.attach(io: File.open("app/assets/pdfs/Maria_Trinidad_cv.pdf"), filename: seventh_jobseeker.last_name, content_type: "application/pdf")
seventh_jobseeker.save!
### Jobseeker 8
rodrigo_hoffman = {email: "rodrigo_hoffman@example.com", password: "123456", first_name: "Rodrigo", last_name: "Hoffman", job_seeker: true, profile_description: "I’m a Business Administration professional with 7+ years of experience. I worked in several positions and industries, which helped me to develop a broad vision in organizations. Originally from Chile, I moved to Germany to pursue a master’s degree and keep growing personally and professionally. However, not long ago I discovered my passion, and that is coding. I’m excited to begin the Full Stack Development program and to begin the next chapter of my life.", nickname: "Rodrigo", profesion: "Project Manager", location: "Berlin" }
eighth_jobseeker = User.create(rodrigo_hoffman)
eighth_jobseeker.avatar.attach(io: File.open("app/assets/images/rodrigo_hoffman_photo.jpg"), filename: eighth_jobseeker.last_name, content_type: "image/jpg")
eighth_jobseeker.cvs.attach(io: File.open("app/assets/pdfs/rodrigo_hoffman_cv.pdf"), filename: eighth_jobseeker.last_name, content_type: "application/pdf")
eighth_jobseeker.save!

########### Employers
puts "Creating employers..."
### Employer 1 --> Medicine
charite_berlin = {email: "charite_berlin@example.com", password: "123456", first_name: "Charite", last_name: "Berlin", job_seeker: false, profile_description: "Charité - Universitätsmedizin Berlin is a world-renowned institution of medical research, education and high-performance medicine and one of the largest hospitals in Europe. It combines both university research and teaching in its medical faculty and patient care in its university hospital. ", nickname: "Charite Berlin", profesion: "Recluiter", location: "Berlin" }
first_employer = User.create(charite_berlin)
first_employer.avatar.attach(io: File.open("app/assets/images/charite_berlin.png"), filename: first_employer.email, content_type: "image/png")
first_employer.save!
### Employer 2 --> Design
design_company = {email: "design_company@example.com", password: "123456", first_name: "Design", last_name: "Company", job_seeker: false, profile_description: "TDC is a design consultancy specialising in Signage and Wayfinding, Environmental Graphics and Identity. We offer services from masterplanning and concept design through to tender documentation and installation supervision", nickname: "The Design Company", profesion: "Recluiter", location: "Berlin" }
second_employer = User.create(design_company)
second_employer.avatar.attach(io: File.open("app/assets/images/design_company.jpeg"), filename: second_employer.email, content_type: "image/png")
second_employer.save!
### Employer 3 --> IT
mobi_team = {email: "mobi_team@example.com", password: "123456", first_name: "Mobi", last_name: "Team", job_seeker: false, profile_description: "Mobiteam does custom Web Design and Development. It is specialized in designing aesthetically beautiful and high-quality websites for corporate, personal and eCommerce. Our clients get websites that sell, attract and obtain market and customer’s respect.", nickname: "Mobi Team", profesion: "Recluiter", location: "Berlin" }
third_employer = User.create(mobi_team)
third_employer.avatar.attach(io: File.open("app/assets/images/mobi_team.png"), filename: third_employer.email, content_type: "image/png")
third_employer.save!
### Employer 4 --> Service
starbucks = {email: "starbucks@example.com", password: "123456", first_name: "Starbucks", last_name: "Coffee Shop", job_seeker: false, profile_description: "Starbucks Corp (Starbucks) is a specialty coffee retailer. It roasts, markets, and retails specialty coffee. The company, through its stores, offers several blends of coffee, handcrafted beverages, merchandise, and food items.", nickname: "Starbucks", profesion: "Recluiter", location: "Berlin" }
fourth_employer = User.create(starbucks)
fourth_employer.avatar.attach(io: File.open("app/assets/images/starbucks.png"), filename: fourth_employer.email, content_type: "image/png")
fourth_employer.save!

########### Jobs
##########
puts "Creating jobs..."
##########
### Job 1
frontend_job = {user: third_employer, position: "Front End Developer", salary: 3500, level: "IT", address: "Viktoria-Luise-Platz 5, 10777 Berlin", description: "Front end developer duties include determining the structure and design of web pages, striking a balance between functional and aesthetic design, and ensuring web design is optimized for smartphones" }
first_job = Job.new(frontend_job)
first_job.save!
### Job 2
backend_job = {user: third_employer, position: "Back End Developer", salary: 4500, level: "IT", address: "Seumestraße 4, 10245 Berlin", description: "Backend developer responsibilities include creating, maintaining, testing, and debugging the entire back end of an application or system. This includes the core application logic, databases, data and application integration, API, and other processes taking place behind the scenes. A highly skilled back end developer is a programmer who knows how to analyze user needs to ensure a positive user experience"}
second_job = Job.new(backend_job)
second_job.save!
### Job 3
project_manager_job = {user: third_employer, position: "Project Manager", salary: 3000, level: "IT", address: "Viktoria-Luise-Platz 5, 10777 Berlin", description: "A project manager is responsible for planning and overseeing projects within an organisation, from the initial ideation through to completion. They coordinate people and processes to deliver projects on time, within budget and with the desired outcomes aligned to objectives"}
third_job = Job.create(project_manager_job)
third_job.save!
### Job 4
weitress_job = {user: fourth_employer, position: "Waitress", salary: 3000, level: "Service", address: "Sredzkistraße 1, 10435 Berlin", description: "The duties and responsibilities of a Waiter/Waitress include welcoming and seating guests, taking guest orders, communicating them effectively to the kitchen and in addition, memorizing the menu and offering recommendations to upsell appetizers, desserts, or drinks"}
fourth_job = Job.create(weitress_job)
fourth_job.save!
### Job 5
perioperative_nurse_job = {user: first_employer, position: "Perioperative nurse", salary: 1750, level: "Medicine", address: "Zossener Str. 44, 10961 Berlin", description: "Perioperative nursing is a nursing specialty that works with patients who are having operative or other invasive procedures. Perioperative nurses work closely with surgeons, anaesthesiologists, nurse anaesthetists, surgical technologists, and nurse practitioners."}
fifth_job = Job.create(perioperative_nurse_job)
fifth_job.save!
### Job 6
cashier_job = {user: fourth_employer, position: "Cashier", salary: 1250, level: "Service", address: "Wolfener Str. 33, 12681 Berlin", description: "Cashiers have many vital duties in retail-based establishments. They are responsible for processing and receiving payments and issuing receipts to customers as they leave with their purchases."}
sixth_job = Job.create(cashier_job)
sixth_job.save!
### Job 7
graphic_designer_job = {user: second_employer, position: "Graphic Designer", salary: 2500, level: "Design", address: "Neumagener Str. 49, 13088 Berlin", description: "The Graphic Designer job description includes the entire process of defining requirements, visualizing and creating graphics including illustrations, logos, layouts and photos. You'll be the one to shape the visual aspects of websites, books, magazines, product packaging, exhibitions and more"}
seventh_job = Job.create(graphic_designer_job)
seventh_job.save!
### Job 8
interior_designer_job = {user: second_employer, position: "Interior Designer", salary: 2500, level: "Design", address: "Gnomenpl. 14, 13088 Berlin", description: "Professionals in this occupation work with interior spaces to improve the safety, functionality and aesthetic appeal of the area. They select color schemes, furniture, flooring, lighting and all other elements of a room or building. "}
eighth_job = Job.create(interior_designer_job)
eighth_job.save!
### Job 9
nurse_job = {user: first_employer, position: "Nurse", salary: 1800, level: "Medicine", address: "Baerwaldstraße 16, 10961 Berlin", description: "A Nurse is responsible for supporting Physicians in administering patient care. Their duties include providing the correct dosage of medicine to patients, administering IVs based on their patients’ conditions and monitoring their patients’ vitals to ensure they have the proper blood pressure or heart rate"}
ninth_job = Job.create(nurse_job)
ninth_job.save!
### Job 10
fullstack_job = {user: third_employer, position: "Full Stack Developer", salary: 5000, level: "IT", address: "Naunynstraße 33, 10999 Berlin", description: "The primary responsibility of a Full Stack Developer includes designing user interactions on websites, developing servers and databases for website functionality and coding for mobile platforms. Particular responsibilities often include: Developing front end website architecture."}
tenth_job = Job.create(fullstack_job)
tenth_job.save!
### Job 11
barista_job = {user: fourth_employer, position: "Barista", salary: 2500, level: "Service", address: "Sonnnenalle 4, 10967 Berlin", description: "A Barista is a professional who makes and serves beverages such as coffee, tea and specialty beverages. They are responsible for taking customer orders and payments. "}
eleventh_job = Job.create(barista_job)
eleventh_job.save!
### Job 12
cafe_support_manager_job = {user: fourth_employer, position: "Café Support Manager", salary: 2500, level: "Service", address: "Am Wriezener bhf, 10243 Berlin", description: "All new cafe/chef managers start training through our support team model. After training, the support manager may be assigned to their own café location. The support manager is responsible for the day-to-day operations of the café, including the hiring, training, and development of the café staff."}
twelfth_job = Job.create(cafe_support_manager_job)
twelfth_job.save!
##########
puts "Finished!"
##########
