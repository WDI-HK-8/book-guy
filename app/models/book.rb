class Book < ActiveRecord::Base
  belongs_to :user
  validates_inclusion_of :condition, :in => 0..5
end
