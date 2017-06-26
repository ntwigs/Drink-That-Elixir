defmodule LiveTweetsTest do
  use ExUnit.Case
  doctest LiveTweets

  test "Test occurance" do
    first_list = [
      "There's nothing you could have done, Luke, had you been there.",
      "How long have you had these droids? About three or four seasons."
    ]

    first_result = [
      "you - 3\n", "had - 2\n", "have - 2\n", "about - 1\n",
      "been - 1\n", "could - 1\n", "done, - 1\n", "droids? - 1\n",
      "four - 1\n", "how - 1\n", "long - 1\n", "luke, - 1\n",
      "nothing - 1\n", "or - 1\n", "seasons. - 1\n", "there's - 1\n",
      "there. - 1\n", "these - 1\n", "three - 1\n"
    ]

    assert LiveTweets.DataHandler.handle_data(first_list) === first_result
    assert LiveTweets.DataHandler.handle_data(first_list) !== first_list
  end

  
end
