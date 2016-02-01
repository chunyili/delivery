module ApplicationHelper
  require "set"

  class Node
    include Comparable

    def <=>(anOther)
      @store_id <=> anOther.store_id
    end
    attr_accessor :store_id, :adjacents, :route_id

    def initialize(store_id)
      @adjacents = Hash.new
      @store_id = store_id
      @parent = nil
    end

    def to_s
      @store_id
    end
  end
  class Graph
    def add_edge(node_a, node_b)
      @route.dept = node_a
      @route.arvl = node_b
      @route.dept.adjacents << @route.arvl
      @route.arvl.adjacents << @route.dept
    end
  end
end
class BreathFirstSearch
  def initialize(nodes, source_store, target_store)
    @nodes = nodes
    @visited = Set.new

    bfs(nodes, source_store, target_store)
  end
  private
  def bfs(nodes, start, target)

    queue = []
    queue << start
    @visited << start.store_id
    @found = false
    while queue.any?
      current_store = queue.shift
      puts current_store.store_id
      current_store.adjacents.each do |adjacent_store|
        next if @visited.include?(adjacent_store)
        nodes[adjacent_store].parent = current_store
        puts ""<<current_store.store_id.to_s<< "-->"<< adjacent_store.to_s
        if adjacent_store.equal? target.store_id
          @found = true
          break
        end
        queue << nodes[adjacent_store]
        @visited << adjacent_store
      end
        break if @found
    end
    puts "-------"
    if @found
      it = target
      while !it.parent.nil?
        puts it.store_id, "<<"
        it = it.parent
      end
      puts it.store_id
    end
  end


end
