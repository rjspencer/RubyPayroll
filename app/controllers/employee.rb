# LIST ALL
get '/employee' do
  @employees = Employee.all
  @employee = Employee.new
  @employee.address = Address.new
  erb :"employee/list"
end

# CREATE
post '/employee/new' do
  @employee = Employee.new
  @employee.name(params[:employee][:name])
  @employee.save
  @address = Address.create(params[:address])
  @employee.address = @address
  redirect '/employee'
end

# EDIT
get '/employee/:id' do
  @employee = Employee.find(params[:id])
  erb :"employee/edit"
end

# UPDATE
post '/employee/:id' do
  @employee = Employee.find(params[:id])
  @employee.update(params[:employee])
  @employee.address.update(params[:address])
  redirect '/employee'
end

# DESTROY
post '/employee/delete/:id' do
  @employee = Employee.find(params[:id])
  @employee.destroy
  redirect '/employee'
end