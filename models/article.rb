class Article < ActiveRecord::Base
 
extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    new_record?
  end
 has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  
end
