class User < ApplicationRecord
    has_and_belongs_to_many :parking_slots, :join_table => :s

    validates :name, presence: true, length: { in: 3..50 }
    validates :surname, presence: true, length: { in: 3..50 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
    validates :phone_number, phone: true
end
