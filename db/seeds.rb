50.times do
	company = Company.create(name: "#{Faker::Company.name}",
		                       country_code: "#{Faker::Address.country_code}"
							            )
	puts company.inspect
	rand(2..10).times do		 
		person = Person.create(company: company,
			                     first_name: "#{Faker::Name.first_name}",
			                     last_name: "#{Faker::Name.last_name}"
						   		        )
	  puts person.inspect
	end
end