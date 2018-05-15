require 'docking_station'

describe DockingStation do 
  it 'exists' do
    expect(DockingStation.new).to be_an_instance_of DockingStation
  end
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike)}
  
  it 'returns the docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end