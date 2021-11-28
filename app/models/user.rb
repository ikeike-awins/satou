class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :cart_items, dependent: :destroy
    has_many :addresses, dependent: :destroy
    has_many :orders, dependent: :destroy


    validates :user_name, presence: true
    validates :kanji_name, presence: true
    validates :kana_name, presence: true
    validates :postal_code, presence: true
    validates :address, presence: true
    validates :telephone_number, presence: true

  def active_for_authentication?
    super && (self.is_deleted == false)
  end


end
