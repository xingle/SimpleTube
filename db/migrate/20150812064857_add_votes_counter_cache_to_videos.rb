class AddVotesCounterCacheToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :upvotes_count, :integer, default: 0
    add_column :videos, :downvotes_count, :integer, default: 0
    add_column :videos, :votes_score, :integer, default: 0
  end
end
