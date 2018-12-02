class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age)
  end

  def self.unique_cities
    distinct(:city).pluck(:city)
  end

  def self.list_comedians(params)
    return all unless params.length > 0
    
    return where(age: params[:age]) if params[:age]
  end
end
