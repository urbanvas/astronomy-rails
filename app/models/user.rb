class User < ApplicationRecord
    has_many :planets
    has_many :systems
    has_many :galaxies
end
