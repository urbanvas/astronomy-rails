class Planet < ApplicationRecord
    belongs_to :user
    belongs_to :system, optional: true
    belongs_to :galaxy, optional: true
    # ^^^new line added^^^ line 4
    # belongs_to :galaxy, through: :systems
    # has_one :galaxy, through: :systems
    
end
