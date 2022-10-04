class TwitterUser < ApplicationRecord
has_many :follower_relationships, class_name: "Relationship", foreign_key: "leader_id"
has_many :followers, through: :follower_relationships, source: :follower
has_many :leader_relationships, class_name: "Relationship", foreign_key: "follower_id"
has_many :leaders, through: :leader_relationships, source: :leader


def follow
  leader = TwitterUser.first
  follower = TwitterUser.seco

  relationship = Relationship.new
  relationship.leader_id = leader[:id]
  relationship.follower_id = follower[:id]

  p relationship

end

end
