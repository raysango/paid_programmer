describe "0001 tests" do
  require 'rails_helper'

  context "Transform1" do
    it "should equal the expected output" do
      s = '{first: "Stephen", last: "King", joined: ["first", "2015-07-26T16:06:41-07:00"]}'
      t = Transform1.new(s)
      expect(t.to_hash).to eq({first: "Stephen", last: "King", joined: ["first", "2015-07-26T16:06:41-07:00"]})
    end
  end

  context "Transform2" do
    it "should equal the expected output" do
      expect(Transform2.new.count).to eq({"Sophia"=>68, "Emma"=>39, "Lily"=>16, "Chloe"=>47, "Zoe"=>25, "Emily"=>68, "Olivia"=>36, "Isabella"=>4, "Ava"=>30, "Mia"=>22})  
    end
  end

  context "MetaProgram" do
    it "should create methods each with the required output" do
      h = {"hello" => "that", "that" => "other", "where" => "here"}
      m = MetaProgram.new(h)
      expect(m.hello).to eq("that")
      expect(m.that).to eq("other")
      expect(m.where).to eq("here")
    end
  end
end