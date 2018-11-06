class Comment < ApplicationRecord
  belongs_to :author, optional: true
end
