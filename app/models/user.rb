class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :last_name, :presence => true

  validates :name, :presence => { :message => "should be present" }

  validates :status, :inclusion => { :in => [ 'pending', 'submitted', 'processed' ]  }

end
