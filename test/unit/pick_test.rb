require File.dirname(__FILE__) + '/../test_helper'

class PickTest < Test::Unit::TestCase
  fixtures :picks
  fixtures :users
  fixtures :players
  fixtures :teams

  # Replace this with your real tests.
  def test_pick_player
    pick = Pick.new(:pick_number => 4, :team_id => 1, :player_id => 5)
    assert pick.save
  end
  
  def test_pick_already_chosen_pick_number
    pick = Pick.new(:pick_number => 3, :team_id => 1, :player_id => 1)
    assert !pick.save        
  end
  
  def test_pick_already_chosen_player
    pick = Pick.new(:pick_number => 4, :team_id => 1, :player_id => 1)
    assert !pick.save        
  end
  
  def test_pick_player_number_with_letter
    pick = Pick.new(:pick_number => 4, :team_id => 1, :player_id => "a")
    assert !pick.save        
  end
    
#  def test_pick_non_existant_player
#    pick = Pick.new(:pick_number => 4, :team_id => 1, :player_id => 200)
#    assert !pick.save        
#  end
  
end
