class PolyTreeNode

    attr_reader :parent, :children, :value

    def initialize(value, children = [])
        @parent = nil
        @value = value
        @children = children
    end

    def parent=(parent) 
        @parent = parent

    end 
end

def parent=(parent) 
    @parent = parent
    @parent.children << self # same as self.parent .... or parent

end