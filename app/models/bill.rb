class Bill < ApplicationRecord
  belongs_to :payer, class_name: "User", foreign_key: "user_id"
  belongs_to :space
  validates :amount, :due_date, presence: true
end
