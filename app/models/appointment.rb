class Appointment <ActiveRecord::Base
    belongs_to :customer
    belongs_to :mechanic

    def self.total_appointments
        self.all.count
    end

    def self.completed_appointments
        Appointment.where(completed: true)
    end

    

    def self.appointments_in_progress
        Appointment.where(completed: false)
    end

end