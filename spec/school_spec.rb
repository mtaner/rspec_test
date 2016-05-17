require 'school'

describe 'School' do
  let(:student) {School.new("Dave")}

  describe "#works" do
    it "should work" do
      expect(student.works).to eq "IT WORKS"
    end
  end

  describe '#late' do
    it "when student is late" do
      expect(student.late).to include 'YOU ARE LATE!'
    end

    it "when Dave is late" do
      expect(student.late).to eq "DAVE, YOU ARE LATE!"
    end
  end

  describe '#detention' do
    it "issues detention" do
      expect(student.detention).to include "detention"
    end

    it "issues a personal detention" do
      expect(student.detention).to eq "Dave, you are late, here is your detention."
    end
  end

  it "raises an error if student escapes school" do
    expect {raise StandardError, "This is an error - you shouldn't escape school!"}.
    to raise_error("This is an error - you shouldn't escape school!")
  end

  shared_examples_for "good_student" do
    let(:good_student) {School.new("Stuart")}
    it "#gets_As" do
    expect(good_student.gets_As).to eq "Well done, Stuart!"
    end
  end

  describe School do
  it_behaves_like "good_student"
  end

  it "initializes with a name" do
  expect(student.name).to eq("Dave")
  end

  it "can't change its name" do
   expect {student.name = "Koren" }.to raise_error(StandardError)
  end

  it "can initialize a student" do
    expect(student).to be_a(School)
  end


end
