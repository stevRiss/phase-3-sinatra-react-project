class Appointment <ActiveRecord::Base
    belongs_to :customer
    belongs_to :mechanic

    def self.total_appointments
        Appointment.all.count
    end

    # def self.total_completed_
end