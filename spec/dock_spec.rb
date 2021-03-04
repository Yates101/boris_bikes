require 'docking_station'

describe DockingStation do
  it 'release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it 'docking station accepts bike as argument to dock' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'stores bike when docked' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes to release' do
      expect { subject.release_bike }.to raise_error 'No bikes left' 
    end
  end

end
