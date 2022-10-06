class ApplicationRecord < ActiveRecord::Base
  # primary_abstract_class
  self.abstract_class = true
  # ActiveRecord::Base.connected_to(role: :reading, shard: :johndoe) do
  #   Article.all # get all articles created by John
  # end
  connects_to shards: {
   default: { writing: :primary, reading: :primary },
   peter: { writing: :primary_peter, reading: :primary_peter },
   gween: { writing: :primary_gween, reading: :primary_gween },
 }
end
