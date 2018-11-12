class Observer < ApplicationRecord
  belongs_to :incident
   validates :name, presence: true
end
