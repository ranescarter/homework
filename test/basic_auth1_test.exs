defmodule BasicAuth1 do
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
  # Basic and simple
  test "Test1 > nil:nil = fail" do
    navigate_to("https://:@the-internet.herokuapp.com/basic_auth")
  end

  test "Test2 > nil:bad = fail" do
    navigate_to("https://:bad@the-internet.herokuapp.com/basic_auth")
  end

  test "Test3 > nil:good = fail" do
    navigate_to("https://:admin@the-internet.herokuapp.com/basic_auth")
  end

  test "Test4 > bad:nil = fail" do
    navigate_to("https://bad:@the-internet.herokuapp.com/basic_auth")
  end

  test "Test5 > good:nil = fail" do
    navigate_to("https://admin:@the-internet.herokuapp.com/basic_auth")
  end

  test "Test6 > bad:good = fail" do
    navigate_to("https://bad:admin@the-internet.herokuapp.com/basic_auth")
  end

  test "Test7 > good:bad = fail" do
    navigate_to("https://admin:bad@the-internet.herokuapp.com/basic_auth")
  end

  test "Test8 > bad:bad = fail" do
    navigate_to("https://bad:bad@the-internet.herokuapp.com/basic_auth")
  end

  test "good:good = pass" do
    navigate_to("https://admin:admin@the-internet.herokuapp.com/basic_auth")
  end
end
