class Book < ActiveRecord::Base
  belongs_to :user
  has_many :requests, :dependent => :destroy
  validates_inclusion_of :condition, :in => 0..5
end
