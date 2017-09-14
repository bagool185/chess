Rspec.describe Movement do 
  it "should have a piece" do 
    movement = Movement.new
    expect(movement.piece).not_to be nil 
  end 

  it "should have coordinates" do 
    movement = Movement.new 
    expect(movement.vertical).not_to be nil 
    expect(movement.horizontal).not_to be nil 
    expect(movement.diagonal).not_to be nil 
  end
end 