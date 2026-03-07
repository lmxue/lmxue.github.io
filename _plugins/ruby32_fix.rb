# Ruby 3.2 compatibility fix for Liquid
# This patch adds the tainted? method back for compatibility with older Liquid versions

if RUBY_VERSION >= "3.2.0"
  class String
    def tainted?
      false
    end
    
    def taint
      self
    end
    
    def untaint
      self
    end
  end
end

