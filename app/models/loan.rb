class Loan < ApplicationRecord
  belongs_to :user
  enum status:{requested:0, accepted:1, rejected:2 }
end
