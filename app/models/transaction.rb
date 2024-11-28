class Transaction < ApplicationRecord
  belongs_to :source_wallet, class_name: "Wallet", optional: true
  belongs_to :target_wallet, class_name: "Wallet", optional: true

  enum_transaction_type: { credit: "credit", debit: "debit" }

  validates :amount, numericality: { greater_than: 0 }
end
