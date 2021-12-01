class Address < ApplicationRecord

    belongs_to :user

    def address_all
        self.postal_code + self.address + self.user_name
    end

end
