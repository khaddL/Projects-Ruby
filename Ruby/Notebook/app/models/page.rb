class Page < ApplicationRecord
  belongs_to :notebook, optional: true
end
