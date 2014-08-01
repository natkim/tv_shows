class Show < ActiveRecord::Base
  has_many :plaids
  has_many :characters
end
