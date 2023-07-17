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

    end
end

kpf = KnightPathFinder.new[0, 0]

p kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
p kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]]