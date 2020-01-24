class Movie < ApplicationRecord
  def self.base_level(page)
    (self.page(page).current_page - 1) * 10
  end
end
