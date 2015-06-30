# == Schema Information
#
# Table name: articles
#
#  id                   :integer          not null, primary key
#  title                :string
#  content              :text
#  votes                :integer          default(0)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  user_id              :integer
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#

class Article < ActiveRecord::Base
  belongs_to :user
  has_attached_file :picture,
      styles: { medium: "300x300>", thumb: "100x100>" }

    validates_attachment_content_type :picture,
      content_type: /\Aimage\/.*\z/
end
