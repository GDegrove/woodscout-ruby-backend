class Participation < ApplicationRecord

    belongs_to :user
    belgos_to :event
    has_many :option


    
end
