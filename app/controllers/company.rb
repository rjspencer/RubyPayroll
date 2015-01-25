get '/company' do
  @companies = Company.all
  @company = Company.new
  @company.address = Address.new
  erb :"company/list"
end

post '/company/new' do
  @company = Company.create(params[:company])
  @address = Address.create(params[:address])
  @company.address = @address
  redirect '/company'
end

get '/company/:id' do
  @company = Company.find(params[:id])
  erb :"company/edit"
end

post '/company/:id' do
  @company = Company.find(params[:id])
  @company.update(params[:company])
  @company.address.update(params[:address])
  redirect '/company'
end

post '/company/delete/:id' do
  @company = Company.find(params[:id])
  @company.destroy
  redirect '/user'
end