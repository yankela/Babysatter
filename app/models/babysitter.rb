class Babysitter < ApplicationRecord
  validates :sat_score, presence: {message: "You need to enter your SAT score!"}
end
