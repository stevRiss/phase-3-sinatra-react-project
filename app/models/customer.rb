class Customer <ActiveRecord::Base
    has_many :appointments
    has_many :mechanics, through: :appointments
end