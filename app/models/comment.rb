class Comment < ActiveRecord::Base
  has_one :approval
  belongs_to :article

  validates :article_id, :presence => true

  def approved?
    approval
  end

  def self.for_dashboard
    order('created_at DESC').limit(5).all
  end

  def word_count
    body.split.count
  end

  def self.total_word_count
    all.inject(0) {|total, a| total += a.word_count }
  end
end
