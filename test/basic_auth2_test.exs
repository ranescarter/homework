defmodule BasicAuth2 do
  @moduledoc """
    https://the-internet.herokuapp.com/basic_auth
    Conditions
    Test1 > nil:nil = fail
    Test2 > nil:bad = fail
    Test3 > nil:good = fail
    Test4 > bad:nil = fail
    Test5 > good:nil = fail
    Test6 > bad:good = fail
    Test7 > good:bad = fail
    Test8 > bad:bad = fail
    Test9 > good:good = pass
  """
  use Hound.Helpers
  use ExUnit.Case
  hound_session()

  # Using variables for UN and PWD
  # Passing variables into a module attribute
  good = "admin"
  bad = "bad"
  @test1 "https://:@the-internet.herokuapp.com/basic_auth"
  @test2 "https://:#{bad}@the-internet.herokuapp.com/basic_auth"
  @test3 "https://:#{good}@the-internet.herokuapp.com/basic_auth"
  @test4 "https://#{bad}:@the-internet.herokuapp.com/basic_auth"
  @test5 "https://#{good}:@the-internet.herokuapp.com/basic_auth"
  @test6 "https://#{bad}:#{good}@the-internet.herokuapp.com/basic_auth"
  @test7 "https://#{good}:#{bad}@the-internet.herokuapp.com/basic_auth"
  @test8 "https://#{bad}:#{bad}@the-internet.herokuapp.com/basic_auth"
  @test9 "https://#{good}:#{good}@the-internet.herokuapp.com/basic_auth"
  #

  test "Test1 > nil:nil = fail" do
    navigate_to(@test1)
  end

  test "Test2 > nil:bad = fail" do
    navigate_to(@test2)
  end

  test "Test3 > nil:good = fail" do
    navigate_to(@test3)
  end

  test "Test4 > bad:nil = fail" do
    navigate_to(@test4)
  end

  test "Test5 > good:nil = fail" do
    navigate_to(@test5)
  end

  test "Test6 > bad:good = fail" do
    navigate_to(@test6)
  end

  test "Test7 > good:bad = fail" do
    navigate_to(@test7)
  end

  test "Test8 > bad:bad = fail" do
    navigate_to(@test8)
  end

  test "good:good = pass" do
    navigate_to(@test9)
  end
end
