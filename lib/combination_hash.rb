

class CombinationHash 
  def initialize(opt={})
    @data = {}
    opt.each do |k,v|
      self[*k] = v
    end
  end

  def [](*args)
    h = @data
    args.sort.each_with_index do |a,i|
      if args[i + 1].nil?
        return h[a]
      else
        if h[a].nil?
          return nil
        else
          h = h[a]
          return nil unless h.kind_of?(Hash)
        end
      end
    end
    nil
  end
  
  def []=(*args)
    val = args.pop
    h = @data
    args.sort.each_with_index do |a,i|
      h[a] ||= {}
      if args[i + 1].nil?
        h[a] = val
      else
        h = h[a]
      end
    end
  end
end

def CombinationHash(param)
  CombinationHash.new(param)
end
