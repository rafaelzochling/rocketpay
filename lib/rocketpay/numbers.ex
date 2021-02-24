defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, fileContent}) do
    result =
      fileContent
      |> String.split(",")
      |> Stream.map(fn number_string -> String.to_integer(number_string) end)
      |> Enum.sum()

    {:ok, %{result: result}}
  end
  defp handle_file({:error, _reason}), do: {:error, %{message: "Invalid file name."}}
end
