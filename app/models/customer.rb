class Customer <ActiveRecord::Base
    has_many :appointments
    has_many :mechanics, through: :appointments

    def self.total_customers
        Customer.all.count
    end
end