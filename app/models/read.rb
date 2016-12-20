class Read < ApplicationRecord
  def self.top
    group(:url).count.sort_by { |key, val| val }.reverse[0..9]
  end
end
