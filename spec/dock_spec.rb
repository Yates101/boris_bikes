require 'docking_station'

describe DockingStation do
  it 'release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'release bike creates a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
