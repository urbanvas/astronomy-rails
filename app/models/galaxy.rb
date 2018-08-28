class Galaxy < ApplicationRecord
    belongs_to :user
    has_many :systems
    has_many :planets, through: :systems
end
