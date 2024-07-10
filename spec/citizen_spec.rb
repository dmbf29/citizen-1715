require_relative "../citizen"

describe Citizen do
  describe '#initialize' do
    it 'should return an instance of a Citizen' do
      expect(Citizen.new('sunjun', 'hwang', 25)).to be_a(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'should return true when age is 18 or over' do
      citizen = Citizen.new('sunjun', 'hwang', 25)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'should return false when age is under 18' do
      citizen = Citizen.new('sunjun', 'hwang', 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'should a formatted string of both names combined' do
      citizen = Citizen.new('sunjun', 'hwang', 17)
      expect(citizen.full_name).to eq('Sunjun Hwang')
    end
  end
end
