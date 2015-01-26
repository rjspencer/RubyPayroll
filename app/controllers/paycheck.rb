# LIST ALL
get '/paycheck' do
  @paychecks = Paycheck.all
  @paycheck = Paycheck.new
  @paycheck.employee = Employee.new
  @employees = Employee.all
  erb :"paycheck/list"
end

# CREATE
post '/paycheck/new' do
  @paycheck = Paycheck.new(params[:paycheck])
  @paycheck.employee = Employee.find(params[:employee])
  @paycheck.save
  redirect '/paycheck'
end

# EDIT
get '/paycheck/:id' do
  @paycheck = Paycheck.find(params[:id])
  @employees = Employee.all
  erb :"paycheck/edit"
end

# UPDATE
post '/paycheck/:id' do
  @paycheck = Paycheck.find(params[:id])
  @paycheck.update(params[:paycheck])
  @paycheck.employee = Employee.find(params[:employee])
  @paycheck.save
  redirect '/paycheck'
end

# DESTROY
post '/paycheck/delete/:id' do
  @paycheck = Paycheck.find(params[:id])
  @paycheck.destroy
  redirect '/paycheck'
end