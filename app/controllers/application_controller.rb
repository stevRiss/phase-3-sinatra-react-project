class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  get "/" do
    [{  customers: Customer.all, 
        appointments: Appointment.all, 
        mechanics: Mechanic.all
    }].to_json
  end

  get "/customers" do  
    {customers: Customer.all}.to_json
    
  end  

  get "/mechanics" do
    {mechanics: Mechanic.all}.to_json
  end

  get "/mechanics/:id" do 
    game = Mechanic.find(params[:id])
    game.to_json(include: :appointments)
  end
  
  get "/appointments" do
    {appointments: Appointment.all}.to_json
  end
    
  post "/appointments" do 
    new_appointment = Appointment.create(
      appointment_reason: params[:appointment_reason],
      appointment_date: params[:appointment_date],
      completed: params[:completed],
      customer_id: params[:customer_id],
      mechanic_id: params[:mechanic_id]
    )
    new_appointment.to_json
  end 

  delete "/appointments/:id" do 
    dead_appt = Appointment.find(params[:id]).destroy
    dead_appt.to_json
  end

end
