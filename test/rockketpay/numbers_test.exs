defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "Sum the numbers when there is a file with the given name" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response === expected_response
    end

    test "Return an error when there is no file with the given name" do
      response = Numbers.sum_from_file("asdf")

      expected_response = {:error, %{message: "Invalid file name."}}

      assert response === expected_response
    end
  end
end
