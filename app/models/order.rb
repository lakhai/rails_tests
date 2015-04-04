class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  PAYMENT_TYPES = ['Credit Cart', 'PayPal', 'Check']
  validates :name, :email, :address, presence: true
  validates :payment_method, inclusion: PAYMENT_TYPES
end
