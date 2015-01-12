class MyHash

  define_method(:initialize) do
      return @init = []
  end

  define_method(:store) do |key, value|
      @init.push(key)
      @init.push(value)
  end

  define_method(:fetch) do |key|
    idx = @init.index(key)

    if(idx == nil)
      return false
    elsif (idx.even?())
      @init.at(idx+1)
    else
      return false
    end
  end

  define_method(:merge) do |my_hash|
    my_hash.get_array.length().times() do |counter|
      @init.push(my_hash.get_array[counter])
    end
    @init
  end

  define_method(:get_array) do
    @init
  end
end
