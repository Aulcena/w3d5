require_relative "./tree_node.rb"

class KnightPathFinder
    attr_accessor :children, :parent, :root_node

    def self.valid_moves(pos)
        moves = [ [1,-2], [2,-1], [2,1], [1,2], [-1,2], [-2,1], [-2,-1], [-1,-2] ]
        new_pos = []

        moves.each do |move|

            if sum_array(pos, move) # example: [1, -2]
            new_pos << sum_array(pos, move) 
        end
    end

    def sum_array(arr_1, arr_2)
        new_arr = []
        new_arr << arr_1[0] + arr_2[0]
        new_arr << arr_1[1] + arr_2[1]
        new_arr
    end 

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