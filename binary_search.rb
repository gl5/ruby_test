def binary_search array, value
  p "查找数组 #{array}, 值 #{value}" if ENV["DEBUG"]
  from, to, idx = 0, array.size.pred, nil
  loop do
    return nil if array[from..to].blank?
    idx = (from + to) / 2
    mid_val = array[idx]
    p "起始 #{from}, 终止 #{to}, 当前索引 #{idx}" if ENV["DEBUG"]

    if value == mid_val
      break
    elsif value > mid_val
      from = idx + 1
    else
      to = idx - 1
    end
  end

  return idx
end

