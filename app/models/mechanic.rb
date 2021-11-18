class Mechanic <ActiveRecord::Base
    has_many :appointments
    has_many :customers, through: :appointments


    def self.total_mechanics
        Mechanic.all.count
    end

    def mechanics_appointments
        total_appts = Appointment.where(id: self.id)
        total_appts
    end

    def self.mechanics_by_specialty
        specialties = {}
        trans = self.all.where(specialty: "Transmission").count
        main = self.all.where(specialty: "Maintenance").count
        brake = self.all.where(specialty: "Brakes").count
        electric = self.all.where(specialty: "Electrical").count
        motor = self.all.where(specialty: "Engine").count


        transmission = "Transmission"
        maintenance = "Maintenance"
        brakes = "Brakes"
        electrical = "Electrical"
        engine = "Engine"

        specialties.store(transmission, trans)
        specialties.store(maintenance, main)
        specialties.store(brakes, brake)
        specialties.store(electrical, electric)
        specialties.store(engine, motor)
        
        specialties
        
    end
    

    def self.most_appointments
        appointments = {}
        arr = []

        self.all.each do |mech|
            
            total = Appointment.where(mechanic_id: mech.id).count
            name = mech.name
            appointments.store(name, total)
            
        end
        arr << appointments
        arr 
        # appointments.min
    end
    
    
    
end