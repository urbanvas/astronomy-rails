class Galaxy < ApplicationRecord
    belongs_to :user
    has_many :systems
    has_many :planets, through: :systems

    validates :name, presence: true
    validates :user_id, presence: true
end
