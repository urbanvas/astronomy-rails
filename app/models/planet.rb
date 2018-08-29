class Planet < ApplicationRecord
    belongs_to :user
    belongs_to :system, optional: true
    belongs_to :galaxy, optional: true

    validates :name, presence: true
    validates :user_id, presence: true

    scope :most_recent, -> {Planet.last}

    def self.search(search)
        if search
            user = User.find_by(username: search)
            if user
                self.where(user_id: user)
            else
                Planet.all
            end
        else
            Planet.all
        end
    end
    
end
