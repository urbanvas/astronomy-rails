class User < ApplicationRecord
    has_secure_password
    has_many :planets
    has_many :systems
    has_many :galaxies
end
