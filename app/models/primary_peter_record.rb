class PrimaryPeterRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :primary_peter }
end
