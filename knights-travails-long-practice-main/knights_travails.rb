require_relative "./tree_node.rb"

class KnightPathFinder
    attr_accessor :children, :parent, :root_node

    def initialize
        @children = []
        @parent = nil
        @root_node = PolyTreeNode.new([0, 0])
        build_move_tree
    end



    def build_move_tree
        #create queue to be populated by children
        queue = [self.root_node]

        #find new positions(children) to move to(moves that are valid and not considered)
        until queue.empty?
        #initialize new positions as instance variables and add them to the queue.
        
        end


    end
end

kpf = KnightPathFinder.new[0, 0]

p kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
p kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]]