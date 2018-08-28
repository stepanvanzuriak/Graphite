require "./spec_helper"

describe Graphite do
  it "LinkedList" do
    # false.should eq(true)

    list = Graphite::LinkedList.new(10)
    list.peek.should eq(10)
    list.top.should eq(10)

    list.append(11)
    list.prepend(12)

    list.peek.should eq(11)
    list.top.should eq(12)

    list.find(10).value.should eq(10)
    list.find(100).value.nil?.should eq(true)
    list.find(100).next.nil?.should eq(true)
  end
end
