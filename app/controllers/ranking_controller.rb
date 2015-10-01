class RankingController < ApplicationController
  def have
     @rank_haves = Have.select("item_id,count(item_id) as have_count").group(:item_id).order("have_count").reverse_order.limit(10)
  #  @rank_have = Have.select("item_id,count(item_id) as have_count").group(:item_id)
  end

  def want
     @rank_wants = Want.select("item_id,count(item_id) as want_count").group(:item_id).order("want_count").reverse_order.limit(10)
  end
end
