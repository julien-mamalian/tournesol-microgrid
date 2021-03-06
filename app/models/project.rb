# == Schema Information
#
# Table name: projects
#
#  id                   :integer          not null, primary key
#  title                :string
#  content              :string
#  city                 :string
#  country              :string
#  datecreation         :integer
#  area                 :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#  user_id              :integer
#  description          :string
#  project_advancement  :string
#  votes                :integer
#  latitude             :float
#  longitude            :float
#
# Indexes
#
#  index_projects_on_user_id  (user_id)
#

class Project < ActiveRecord::Base
  acts_as_votable
  acts_as_followable

  geocoded_by :city
  after_validation :geocode, if: :city_changed?

  belongs_to :user
  has_many :projects_comments

  has_many :links, dependent: :destroy
  has_many :articles, through: :links

  validates_inclusion_of :project_advancement, in: ["Initialized", "Started", "In construction", "Finalizing", "Deployed"]

  has_attached_file :picture,
      styles: { medium: "500x500>", thumb: "100x100>" }

    validates_attachment_content_type :picture,
      content_type: /\Aimage\/.*\z/
end
