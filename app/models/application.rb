class Application < ApplicationRecord
  validates :user, uniqueness: true

  belongs_to :user
  belongs_to :job
end
