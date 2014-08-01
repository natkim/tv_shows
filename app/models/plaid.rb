class Plaid < ActiveRecord::Base
  belongs_to :networks
  belongs_to :shows
end
