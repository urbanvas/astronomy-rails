class User < ApplicationRecord
    has_secure_password
    has_many :planets
    has_many :systems
    has_many :galaxies

    validates :username, :email, :password, presence: true
    validates :email, uniqueness: true
    validates :password, length: { in: 3..20 }

    def self.search(search)
        if search
            user = User.find_by(username: search)
            if user
                self.where(id: user)
            else
                User.all
            end
        else
            User.all
        end
    end
end
