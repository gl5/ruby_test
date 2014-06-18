# encoding: utf-8

require 'csv'

class SortTest

  # 构造数据
  #@@sorted_keys = %w{a c e g i k m o q s u w y b d f h j l n p r t v x z}
  #@@row = {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6, 'g' => 7, 'h' => 8, 'i' => 9, 'j' => 10, 'k'=> 11, 'l' => 12, 'm' => 13, 'n' => 14, 'o' => 15, 'p' => 16, 'q' => 17, 'r' => 18, 's' => 19, 't' => 20, 'u' => 21, 'v' => 22, 'w' => 23, 'x' => 24, 'y' => 25, 'z' => 26}
  @@sorted_keys = %w{hourly campaign_id campaign_id_name campaign_id_start_date campaign_id_end_date campaign_id_network_brand_name network_media_id network_media_id_name placement_id placement_id_name placement_id_channel_name placement_id_payment_type placement_id_cost_type placement_id_est_imp_per_unit placement_id_est_clk_per_unit placement_id_material_dimension placement_id_material_type creative_id creative_id_name creative_id_shortname city_id city_id_name crumbs crumbs_count_view view crumbs_count_click click}
  @@row = {"campaign_id"=>"16591", "network_media_id"=>"1353", "placement_id"=>"200303536", "creative_id"=>"0", "city_id"=>"340561", "hourly"=>"14010614", "crumbs"=>"[[\xE5\xA4\x96\xE7\xAB\x99]]", "crumbs_count_view"=>"59", "view"=>"60", "crumbs_count_click"=>"0", "click"=>"0", "campaign_id_name"=>"伊利_2013_054_金装婴幼儿奶粉网络推广波次", "campaign_id_start_date"=>"2013-12-20", "campaign_id_end_date"=>"2014-01-31", "campaign_id_network_brand_name"=>"默认品牌", "network_media_id_name"=>"宝宝树", "placement_id_name"=>"补配--育儿问答内容页右侧矩形2轮换", "placement_id_channel_name"=>"补配资源", "placement_id_payment_type"=>"purchase", "placement_id_cost_type"=>"day", "placement_id_est_imp_per_unit"=>"800000", "placement_id_est_clk_per_unit"=>"4500", "placement_id_material_dimension"=>"250x230", "placement_id_material_type"=>"flash", "creative_id_name"=>"", "creative_id_shortname"=>"", "city_id_name"=>"安徽淮北市"}
  @@data = []
  200000.times {@@data << @@row}

  # 排序方案一
  def self.old_sort
    CSV.open("sort_result.csv", "wb") do |csv|
      i = 0
      @@data.each do |row|
        i += 1
        p "#{Time.now} at line #{i}" if i % 10000 == 0
        csv << sort_row(row).map { |value| value.to_s.dup.force_encoding(Encoding::UTF_8).encode(Encoding::GBK, :undef => :replace, :replace => "?", :invalid => :replace) }
      end
    end
  end

  def self.sort_row(row)
    @@sorted_keys.map{ |k| row[k]}
  end

  # 排序方案二
  def self.new_sort
    @@data.each do |row|
      p Hash[row.sort_by{ |k, v| @@sorted_keys.index(k)}]
    end
  end
end

start = Time.now
p "===============START=================="
p start
SortTest.old_sort
ended = Time.now
p "===============END===================="
p ended
