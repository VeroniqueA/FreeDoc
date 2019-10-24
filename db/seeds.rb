10.times do |index|
	Doctor.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		speciality: ["dentiste", "cardiologue", "gynécologue", "généraliste", "dermatologue"].sample,
		zip_code: Faker::Address.zip_code
		)
end

10.times do |index|
	Patient.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name
		)
end

10.times do |index|
	Appointment.create!(
		date: Faker::Date.in_date_period(month: 2), doctor: Doctor.all.sample, patient: Patient.all.sample
		)
end
		