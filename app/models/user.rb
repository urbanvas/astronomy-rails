class User < ApplicationRecord
    has_secure_password
    has_many :planets
    has_many :systems
    has_many :galaxies

    validates :username, :email, :password, presence: true
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

    def self.find_or_create_by_omniauth(auth_hash)
        user = User.find_or_create_by(email: auth_hash['email']) do |u|
            u.username = auth_hash['info']['name']
            u.email = auth_hash['info']['email']
            u.password = auth_hash['uid']
        end
        if User.exists?(user.id)
            user
          else
            user.save!
            user
        end
     end
end
