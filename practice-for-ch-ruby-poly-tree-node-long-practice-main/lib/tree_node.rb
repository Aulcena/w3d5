require "byebug"

class PolyTreeNode

    attr_accessor :parent, :children, :value

    def initialize(value, children = [])
        @parent = nil
        @value = value
        @children = children
    end

    def parent=(parent) 
    
    # delete myself parents list of children
    # account for old parent is nil and new parent is not nil
    @parent.children.delete(self) if @parent != nil 
    
    @parent = parent

    # assign a parent and assign our(new) parents children
    # account for old parent is not nil and new parent is nil 
        if @parent != nil
            #if !@parent.children.include?(self)
                
            @parent.children << self # same as self.parent .... or parent
        end
    end

    def add_child(child_node)

        child_node.parent=(self)
        
    end

    def remove_child(child_node)

        if !self.children.include?(child_node)

            raise "#{child_node} is not a child, therefore it can not be removed"

        else

            self.children.delete(child_node)

        end

        child_node.parent = nil

       

    end

    # def dfs(target)

    #     return self if self == target

    #     @children.each do | child |

    #         return self if dfs(child) == target

    #     end

    #     nil
    # end

end

