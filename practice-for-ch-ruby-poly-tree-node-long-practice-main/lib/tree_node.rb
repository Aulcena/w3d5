
require "byebug"
class PolyTreeNode

    attr_accessor :parent, :children, :value

    def initialize(value, children = [])
        @parent = nil
        @value = value
        @children = children
    end

    def parent=(parent) 
        @parent = parent

    end 
end




# account for old parent is not nil and new parent is nil 

def parent=(parent) 
    
    # delete myself parents list of children
    # account for old parent is nil and new parent is not nil
    self.parent.children.delete(self) if self.parent != nil 
    
    debugger
    @parent = parent

    # assign a parent and assign our(new) parents children

    if self.parent != nil
        if !@parent.children.include?(self)
            
            @parent.children << self # same as self.parent .... or parent

            p @parent.children
        end
    end


end
p s = PolyTreeNode.new(3)

