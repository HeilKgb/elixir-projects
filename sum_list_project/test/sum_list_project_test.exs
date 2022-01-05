defmodule SumListTest do
  use ExUnit.Case

  describe "call/1" do
    test "Return the list sum" do
      list = [1, 2, 3]
      response = SumList.call(list)

      assert is_integer(response)
    end
  end
end
