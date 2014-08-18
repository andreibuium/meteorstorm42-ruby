require 'test/unit'
require './Node'

class TestNode < Test::Unit::TestCase
  
  
  def setup_simple_graph
    
    # A --- B --- D
    #  \          \
    #   \-------- C
    
    nodeA = Node.new("A") 
    nodeB = Node.new("B")
    nodeC = Node.new("C")
    nodeD = Node.new("D")
    
    nodeA.neighbors = [nodeB,nodeC]
    nodeB.neighbors = [nodeD]
    nodeD.neighbors = [nodeC]
    
    return nodeA
  end
  
  
  def testClone
    nodeA = setup_simple_graph()
    cloneA = nodeA.clone
    
    assert cloneA.neighbors.map { |n| n.name }.include? "B"
    assert cloneA.neighbors.map { |n| n.name }.include? "C"
    cloneA.get_neighbor_by_name("B").neighbors.include? "D"
    cloneA.get_neighbor_by_name("B").get_neighbor_by_name("D").neighbors.include? "C"
  end
  
  
  def test_inspect_clone
    nodeA = setup_simple_graph()
    cloneA = nodeA.clone
    
    stringA = nodeA.inspect
    stringCloneA = cloneA.inspect

    # puts stringA
    # puts "----------------------------"
    # puts stringCloneA
    assert_equal stringA, stringCloneA
  end
  
  
end
