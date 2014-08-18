require 'set'

class Node

  attr_accessor :name
  attr_accessor :neighbors
  
  
  #---------------------------------------------------------------------
  # returns a new Node
  # with the given name and neighbors 
  # (specifying neighbors is optional)
  #---------------------------------------------------------------------
  def initialize(name, neighbors = [])
    
    unless name.is_a? String
      raise ArgumentError, "A Node's name must be a String."
    end
    
    unless neighbors.is_a? Array
      raise ArgumentError, "A Node's neighbors must be an Array."
    end
    
    @name = name
    @neighbors = neighbors
  end


  #---------------------------------------------------------------------
  # returns the first neighbor of this node
  # whose name matches the given node
  #---------------------------------------------------------------------
  def get_neighbor_by_name(name)
    @neighbors.find { |n| n.name == name }
  end


  #---------------------------------------------------------------------
  # returns a deep clone of the this node
  #---------------------------------------------------------------------
  def clone(visited=Set.new)
    
    clone = Node.new(@name)
    
    unless visited.include? self
      @neighbors.each { |neighbor| clone.neighbors << neighbor.clone(visited << self) }
    end
    
    return clone
    
  end


  #---------------------------------------------------------------------
  # returns a string composed of this node's name
  # and its neighbors' inspect strings,
  # recursively indented
  # +depth+:: the current depth of the node we're looking at (relative to start node)
  # +visited+:: the Set of visited Nodes so far; not specifying this uses the empty set 
  #---------------------------------------------------------------------
  def inspect(depth=0, visited=Set.new)
    
    return "" if visited.include? self
    visited << self
    
    string = ""
  
    depth.times{ string += "\t" }
    string += "(#{depth})Node: " + @name + "\n"
    
    depth.times{ string += "\t" }
    string += "(#{depth})Neighbors: \n"
     
    string += @neighbors.map { |n| n.inspect(depth+1) }.join
  end

end