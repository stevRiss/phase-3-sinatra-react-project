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
    
    # def self.most_appointments
    #     # allMechs = Mechanic.all
    #     prev_total = 0
    #     Mechanic.all.each do |mech|
            
    #         total = Appointment.where(mechanic_id: mech.id).count
    #         if (total > prev_total)
    #             mech.name
    #             # `#{mech.name} has #{total} appointments, which is the most`
    #             binding.pry
    #         else
    #             puts
    #         end
            
    #     end
        
        # prev_total.max
    # end
    
    
    
end