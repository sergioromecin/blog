class Comment < ApplicationRecord
  belongs_to :post
  broadcastas_to :post
end
