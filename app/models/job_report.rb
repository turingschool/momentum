class JobReport < ApplicationRecord
  belongs_to :person
  belongs_to :company

  enum sequence: [:before_turing, :first_job, :second_job, :third_job, :fourth_job, :fifth_job]  
end
