Spec.describe(Vehicule) do
  describe ".move" do
    let(:driver) { "John Doe" }

    subject { -> { Vehicule.move(vehicule) } }

    context "when vehicule is a bicycle" do
      let(:vehicule) { Bicycle.new(driver) }

      it { is_expected.to change(vehicule, :distance).by(2) }
    end

    context "when vehicule is a motorbike" do
      let(:vehicule) { Motorbike.new(driver) }

      it { is_expected.to change(vehicule, :distance).by(4) }
    end

    context "when vehicule is a car" do
      let(:vehicule) { Car.new(driver) }

      it { is_expected.to change(vehicule, :distance).by(6) }
    end
  end
end
