require_relative '../lib/car'
require 'byebug'

RSpec.describe "Car" do
  before(:each) do
    @car = Car.new
  end
  it "has current speed of 0" do
    expect(@car.current_speed).to eq(0)
  end
  it "has default max_speed of 0" do
    expect(@car.max_speed).to eq(0)
  end
  it "has an accelerate method" do
    expect(@car.respond_to?(:accelerate)).to eq(true)
  end
  it "can accelerate by 1" do
    @car.accelerate
    expect(@car.current_speed).to eq(1)
  end
  it "has has drive method" do
    expect(@car.respond_to?(:drive)).to eq(true)
  end
end

RSpec.describe "Camero" do
  before(:each) do
    @camero = Camero.new
  end
  it "has current speed of 0" do
    expect(@camero.current_speed).to eq(0)
  end
  it "has default max_speed of 0" do
    expect(@camero.max_speed).to eq(200)
  end
  it "has has accelerate method" do
    expect(@camero.respond_to?(:accelerate)).to eq(true)
  end
  it "can accelerate by 1" do
    @camero.accelerate
    expect(@camero.current_speed).to eq(1)
  end
  it "has has drive method" do
    expect(@camero.respond_to?(:drive)).to eq(true)
  end
  it "can drive" do
    @camero.drive
    expect(@camero.current_speed).to eq(1)
    @camero.drive
    expect(@camero.current_speed).to eq(2)
  end
  it "can drive up to it maximum speed" do
    @camero.current_speed = 198
    @camero.drive
    expect(@camero.current_speed).to eq(199)
    @camero.drive
    expect(@camero.current_speed).to eq(200)
    @camero.drive
    expect(@camero.drive).to eq('Camero has hit the cars max speed')
  end
end
