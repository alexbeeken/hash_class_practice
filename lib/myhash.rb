class MyHash

  define_method(:initialize) do
      return @init = []
  end

  define_method(:store) do |key, value|
      @init.push([key, value])
  end

  define_method(:fetch) do |key|
    idx = @init.index(key)

    @init.each() do |grouping|

    if (grouping[0] == key)
      return grouping[1]
    end
  end
    return false
end

  define_method(:merge) do |my_hash|
    sum = @init + my_hash.get_array

    sum = sum.uniq

    sum.length.times do |counter|

    sum.keep_if{(sum[counter][0] == my_hash[counter][0]) || (sum[counter][0] && my_hash[counter][0])}

            end
          end
        end
      end
      sum
  end

  define_method(:get_array) do
    @init
  end
end
