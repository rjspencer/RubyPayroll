User.destroy_all
Employee.destroy_all
Company.destroy_all
Paycheck.destroy_all

User.create(email: "ryan@test.com", password: "123456", role: 'admin', active: true)
e = Employee.create!(first_name: "Ryan", last_name: "Spencer", company_id: 1)
e.address = Address.create!(street_1: "123 Sesame", city: "Chicago", state: "IL", zip: "60610")
e = Employee.create!(first_name: "Other", last_name: "Guy", company_id: 1)
e.address = Address.create!(street_1: "123 Sesame", city: "Chicago", state: "IL", zip: "60620")