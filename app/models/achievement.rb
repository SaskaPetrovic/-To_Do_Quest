class Achievement < ApplicationRecord
  belongs_to :user
  belongs_to :sub_category
end
