class Order < ApplicationRecord

    belongs_to :user

	validates :user_id, :address,:name,
			  		:total_payment, :payment_method,
			  		presence: true

	validates :postal_code, length: {is: 7}, numericality: { only_integer: true }

	enum payment_method: {credit_card: 0,bank_transfer: 1}

	enum status: {waiting_for_payment: 0,payment_confirmation: 1,production: 2,ready_to_ship: 3, sent: 4}

end
