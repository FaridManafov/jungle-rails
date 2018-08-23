class Order < ActiveRecord::Base

  belongs_to :user

  has_many :line_items

  monetize :total_cents, numericality: true

  validates :stripe_charge_id, presence: true

  after_create :send_receipt

  def send_receipt
    MailOrder.receipt_email(self).deliver_now
  end
  
end
