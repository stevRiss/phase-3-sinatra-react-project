class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  get "/" do
    {  customers: Customer.all, 
        appointments: Appointment.all, 
        mechanics: Mechanic.all
    }.to_json
  end

  get "/customers" do  
    Customer.all.to_json
  end  

  
  get "/mechanics" do
   Mechanic.all.to_json
  end

  get "/mechanics/:id" do 
    game = Mechanic.find(params[:id])
    game.to_json(include: :appointments)
  end
  
  get "/appointments" do
   Appointment.all.to_json
  end
    
  # get "/bookappointments" do 
  #   [{
  #     customers: Customer.all,
  #     appointments: Appointment.all
  #   }]
  # end 

  post "/appointments" do 
  
    new_customer = Customer.create(
      name: params[:name],
      email: params[:email],
      carmodel: params[:carmodel]
    )
    

    new_appointment = Appointment.create(
      issue: params[:issue],
      startDate: params[:startDate],
      completed: false,
      name: params[:name],
      email: params[:email],
      carmodel: params[:carmodel],
      customer_id: new_customer.id,
      mechanic_id: params[:mechanic_id]
    )
    if !new_customer
      {error: "Customer not created"}.to_json
    else
      new_customer.to_json 
      new_appointment.to_json
    end
  end 


  
  patch '/appointments/:id' do
    updateAppontment = Appointment.find(params[:id])
    updateAppontment.update(
      issue: params[:issue],
      startDate: params[:startDate],
      completed: false,
      name: params[:name],
      email: params[:email],
      carmodel: params[:carmodel],
      mechanic_id: params[:mechanic_id]
    )
    updateAppontment.to_json
  end

  delete "/appointments/:id" do 
    dead_appt = Appointment.find(params[:id]).destroy
    dead_appt.to_json
  end

end
