module Enumerable

    #my_each
    def my_each

        for i in 0...self.length
            yield self[i]
        end
        #Yield asks for a block
        #Self returns the elements of the array
    end

    #my_each_with_index
    def my_each_with_index

        for i in 0...self.length
            yield self[i], i
        end

    end

    #my_selected
    def my_select

     selected = []

        self.my_each do |i|

            if yield(i)
                selected << i
            end
        end
    
      return selected
    end


    #my_all?
    def my_all?

        n = self.length

        selected = []

        self.my_each do |i|
            if yield(i)
                selected << i
            end
        end

     return selected.length == n

    end

    #my_any?
    def my_any?

     selected = self.my_select do |i|
            yield(i)
        end

     return selected.length > 0

    end


    #my_none?
    def my_none?

        selected = self.my_select {|i| yield(i)}
        return !(selected.length > 0)

    end


    #my_count
    def my_count(x = nil)

        if !block_given? && x == nil
            selected = []

            self.my_each do |i|
                selected << i
            end
            return selected.length
        end

        if !block_given? && x != nil

            selected = []

            self.my_each do |i|
                if i == x
                    selected << i
                end
            end
            return selected.length
        end

        if block_given? && x == nil
            selected = self.my_select {|i| yield(i)}

            return selected.length
        end
        
    
    end



    #my_map

    def my_map

        mapped = []
        self.my_each do |i|
           mapped << yield(i)
        end

        return mapped 

    end


    #inject

    def my_inject

        total = 0
        accumulator = 0

        Array(self).my_each_with_index do |i, ind|
           
           if ind == 0
            total += i
           else
            total += yield accumulator, i
           end
        
        
        end

        return total
    end

end




puts (1..200).inject{|sum, n| sum - n }
puts (1..200).my_inject{|sum, n| sum -n }
