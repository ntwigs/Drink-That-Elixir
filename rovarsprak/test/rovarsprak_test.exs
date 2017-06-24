defmodule RovarsprakTest do
  use ExUnit.Case
  doctest Rovarsprak

  test "Testing word conversion" do
    assert Rovarsprak.Controller.compare_word_consonants("storm-trooper") == "sostotorormom-totroroopoperor"
    assert Rovarsprak.Controller.compare_word_consonants("darth-vader") == "dodarortothoh-vovadoderor"
    assert Rovarsprak.Controller.compare_word_consonants("jedi") == "jojedodi"
    assert Rovarsprak.Controller.compare_word_consonants("yoda") == "yododa"
  end
end