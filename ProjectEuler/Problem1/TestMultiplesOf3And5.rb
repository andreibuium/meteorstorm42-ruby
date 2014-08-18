require 'test/unit'
require './MultiplesOf3And5'

class TestMultiiplesOf3And5 < Test::Unit::TestCase
  
  def test_multiple_2_upto_0()
    assert_equal 0, sum_of_multiple(2,0)
  end
  
  def test_multiples_2_upto_0()
    assert_equal 0, sum_of_multiples([2],0)
  end
  
  def test_multiple_2_upto_10()
    assert_equal 20, sum_of_multiple(2,9)
  end
  
  def test_multiples_2_upto_10()
    assert_equal 20, sum_of_multiples([2],9)
  end
  
  def test_multiple_3_upto_10()
    assert_equal 18, sum_of_multiple(3,9)
  end
  
  def test_multiples_3_upto_10()
    assert_equal 18, sum_of_multiples([3],9)
  end
  
  def test_multiple_4_upto_10()
    assert_equal 12, sum_of_multiple(4,9)
  end
  
  def test_multiples_3_and_4_upto_10()
    assert_equal 30, sum_of_multiples([3,4],9)
  end
  
  def test_multiples_3_and_5_upto_10()
    assert_equal 23, sum_of_multiples([3,5],9)
  end
  
  def test_multiples_3_and_5_upto_1000()
    assert_equal 233168, sum_of_multiples([3,5],999)
  end
  
  def test_multiples_2_3_4_upto_12()
    assert_equal 54, sum_of_multiples([2,3,4],12)
  end
  
end
  