class User < ApplicationRecord
  has_many :posts

  def self.ransackable_attributes(_auth_object = nil)
    %w[name email] # Allow searching by name and email
  end

  def self.ransackable_associations(_auth_object = nil)
    [] # We don't have any searchable associations in this case
  end
end
