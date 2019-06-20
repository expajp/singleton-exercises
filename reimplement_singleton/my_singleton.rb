module MySingleton    
  def self.included(klass)
    klass.extend ClassMethods
    klass.private_class_method :new
  end

  module ClassMethods
    def instance
      @instance ||= new
    end
  end
  
  def dup
    raise TypeError
  end

  def clone 
    raise TypeError
  end

end