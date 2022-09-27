class Monster < ApplicationRecord
 validates :name, presence: true, uniqueness: true
 has_many :attacks, dependent: :destroy
end
