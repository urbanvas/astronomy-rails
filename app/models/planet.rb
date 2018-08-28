class Planet < ApplicationRecord
    belongs_to :user
    belongs_to :system, optional: true
    belongs_to :galaxy, optional: true
    # ^^^new line added^^^ line 4
    # belongs_to :galaxy, through: :systems
    # has_one :galaxy, through: :systems
    validates :name, presence: true
    validates :user_id, presence: true

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
