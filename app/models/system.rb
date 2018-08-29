class System < ApplicationRecord
    belongs_to :user
    belongs_to :galaxy, optional: true
    has_many :planets

    validates :name, presence: true
    validates :user_id, presence: true

    scope :most_recent, -> {System.last}

    def self.search(search)
        if search
            user = User.find_by(username: search)
            if user
                self.where(user_id: user)
            else
                System.all
            end
        else
            System.all
        end
    end
end
