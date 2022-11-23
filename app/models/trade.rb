class Trade < ApplicationRecord
  belongs_to :user
  belongs_to :collection
  belongs_to :type_id
end
