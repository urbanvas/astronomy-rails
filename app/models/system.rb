class System < ApplicationRecord
    belongs_to :user
    belongs_to :galaxy, optional: true
    has_many :planets

    validates :name, presence: true
    validates :user_id, presence: true
end
