class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :integer2, :numericality => { :equal_to => 12, :less_than => 13, :other_than => 15, :greater_than => 10, :less_than_or_equal_to => 14, :greater_than_or_equal_to => 11, :even => true }

  validates :last_name, :presence => true

  validates :name, :presence => { :message => "should be present" }

  validates :status, :inclusion => { :in => [ 'pending', 'submitted', 'processed' ]  }

end
