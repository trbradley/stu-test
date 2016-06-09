require 'vehicle'

describe Vehicle do
  describe ".move" do
    let(:driver) { "John Doe" }

    subject { -> { Vehicle.move(vehicle) } }

    context "when vehicle is a bicycle" do
      let(:vehicle) { Bicycle.new(driver) }

      it { is_expected.to change(vehicle, :distance).by(2) }
    end

    context "when vehicle is a motorbike" do
      let(:vehicle) { Motorbike.new(driver) }

      it { is_expected.to change(vehicle, :distance).by(4) }
    end

    context "when vehicle is a car" do
      let(:vehicle) { Car.new(driver) }

      it { is_expected.to change(vehicle, :distance).by(6) }
    end
  end
end
