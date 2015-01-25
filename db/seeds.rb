User.destroy_all
User.create!(first_name: "Ryan", last_name: "Spencer", email: "ryan@test.com", password: "123456", role: 'admin', active: true)
