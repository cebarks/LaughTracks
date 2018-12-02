class Special < ActiveRecord::Base
  belongs_to :comedian
  validates :name, presence: true

  def self.average_runtime
    average(:runtime)
  end
end
