class Lease < ApplicationRecord
  belongs_to :apartment
  belongs_to :tenant

  validates :rent, :apartment_id, :tenant_id, presence: true
end
