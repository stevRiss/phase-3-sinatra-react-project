class Mechanic <ActiveRecord::Base
    has_many :appointments
    has_many :customers, through: :appointments
    
end