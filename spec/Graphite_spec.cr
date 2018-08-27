require "./spec_helper"

describe Graphite do
  it "LinkedList" do
    # false.should eq(true)

    list = Graphite::LinkedList.new(10)
    puts list.peek
    puts list.top

  end
end
