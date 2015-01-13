
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

    output = []
    
    sum = sum.uniq
    
    keys_sum = []
    
    sum.each do |arrays|
      if (sum.index(arrays).odd?)
        keys_sum.push(arrays)
      end
    end
      
    keys_sum = keys_sum.uniq
    
    counter = 0
    
    keys_sum.each do |keys|
      if (keys == sum[counter][0])
        output.push(sum[counter][0])
        output.push(sum[counter][1])
        counter = counter + 2
      end
    end 
   
    binding.pry
    output
    
  end
=begin
    puts(sum)
    puts(@init)
    puts(my_hash)
    
    if (my_hash.get_array.length > @init.length)
      loop_times = my_hash.get_array.length
    else
      loop_times = @init.length
    end

      loop_times.times do |counter|
      
      puts(counter)
      puts(@init[counter][0])
      puts(my_hash.get_array[counter][0])
      
      if((sum[counter][0] == my_hash.get_array[counter][0]) && sum[counter][0] != @init[counter][0])
      
      output.push(sum[counter])
      
      elsif((sum[counter][0] == my_hash.get_array[counter][0]) && sum[counter][1] == my_hash.get_array[counter][1])
    
      output.push(my_hash[counter])

      elsif((sum[counter][0] == @init[counter][0]) && sum[counter][0] != my_hash.get_array[counter][0])
      
      output.push(@init[counter])
        
      else
      
    end
=end

  define_method(:get_array) do
    @init
  end
  
  define_method(:return_single_pairs) do |array1, array2|
    output = []
    keys1 = array1.keys
    keys2 = array2.keys
    
    keys1.each do |keys1_1|
      
      keys2.each do |keys2_1|
        if keys1_1 == keys2_1
          
        end
        
      end
    end
    output
  end
end
