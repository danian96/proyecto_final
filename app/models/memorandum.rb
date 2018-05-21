class Memorandum < ApplicationRecord
  belongs_to :memorandum_type
  belongs_to :user
end
