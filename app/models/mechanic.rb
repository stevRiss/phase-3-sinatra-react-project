class Mechanic <ActiveRecord::Base
    has_many :appointments
    has_many :customers, through: :appointments


    def self.total_mechanics
        Mechanic.all.count
    end
    
    
    
end