class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :status, :inclusion => { :in => [ 'pending', 'submitted', 'processed' ]  }

end
