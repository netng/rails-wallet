class Wallet < ApplicationRecord
  belongs_to :entity, polymorphic: true

  has_many :source_transactions, class_name: "Transaction", foreign_key: :source_wallet_id
  has_many :target_transactions, class_name: "Transaction", foreign_key: :target_wallet_id

  validates :balance, numericality: { greater_than_or_equal_to: 0 }

  # helper method for calculate total transactions
  def total_transactions
    source_transactions.count + target_transactions.count
  end
end
