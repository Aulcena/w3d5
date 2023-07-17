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

    def dfs(target_value)
        # stack starts with root node (NOT AN ARRAY)
        # return node if node is the target, the base case
        return self if self.value == target_value

        # In order to move to the leaf nodes as fast as possible,
        # we need to call dfs to travel downwards on the children
        # until there are no more children to iterate through

        # iterate through node's children
        self.children.each do |child|
            # call DFS on each child node
            result = child.dfs(target_value)
            if result != nil # if result is not nil, return node
                return result # we return result (instead of child instance, because we need to also call DFS on the children, to keep the search going deeper to the bottom of the tree)
            end
        end    
            # (this means we found the node, and we want to continue
            # returning this node up the stack frames)
                # We DONT want to return nil because that could reeturn
                # too early when we didn't check other nodes yet

        # return nil if target is not found
        nil
    end

    def bfs(target_value)
        # create queue
        # add root node into our queue
        queue = [self]

        # loop through the queue until it is empty
        until queue.empty?
            # remove the first node from the queue (dequeue)
            node = queue.shift
            # check if removed node is the target
            if target_value == node.value
            # if this node is the target, return node
                return node
            # if this node is not the target, add node's children into queue
            end
        end
            
    # return nil if we made it through the entire tree without finding a target
    end

end

