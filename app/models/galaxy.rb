class Galaxy < ApplicationRecord
    belongs_to :user
    has_many :systems
    has_many :planets, through: :systems

    validates :name, presence: true
    validates :user_id, presence: true

    scope :most_recent, -> {Galaxy.last}

    def self.search(search)
        if search
            user = User.find_by(username: search)
            if user
                self.where(user_id: user)
            else
                Galaxy.all
            end
        else
            Galaxy.all
        end
    end
end
