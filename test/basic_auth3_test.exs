defmodule BasicAuth3 do
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

  # Overkill, but so cool to learn
  test1 = %{un: nil, pwd: nil}
  @test1un test1[:un]
  @test1pwd test1[:pwd]
  @test1url "https://#{test1[:un]}:#{test1[:pwd]}@the-internet.herokuapp.com/basic_auth"

  test2 = %{un: nil, pwd: "bad"}
  @test2un test2[:un]
  @test2pwd test2[:pwd]
  @test2url "https://#{test2[:un]}:#{test2[:pwd]}@the-internet.herokuapp.com/basic_auth"

  test3 = %{un: nil, pwd: "admin"}
  @test3un test3[:un]
  @test3pwd test3[:pwd]
  @test3url "https://#{test3[:un]}:#{test3[:pwd]}@the-internet.herokuapp.com/basic_auth"

  test4 = %{un: "bad", pwd: nil}
  @test4un test4[:un]
  @test4pwd test4[:pwd]
  @test4url "https://#{test4[:un]}:#{test4[:pwd]}@the-internet.herokuapp.com/basic_auth"

  test5 = %{un: "admin", pwd: nil}
  @test5un test5[:un]
  @test5pwd test5[:pwd]
  @test5url "https://#{test5[:un]}:#{test5[:pwd]}@the-internet.herokuapp.com/basic_auth"

  test6 = %{un: "bad", pwd: "admin"}
  @test6un test6[:un]
  @test6pwd test6[:pwd]
  @test6url "https://#{test6[:un]}:#{test6[:pwd]}@the-internet.herokuapp.com/basic_auth"

  test7 = %{un: "admin", pwd: "bad"}
  @test7un test7[:un]
  @test7pwd test7[:pwd]
  @test7url "https://#{test7[:un]}:#{test7[:pwd]}@the-internet.herokuapp.com/basic_auth"

  test8 = %{un: "bad", pwd: "bad"}
  @test8un test8[:un]
  @test8pwd test8[:pwd]
  @test8url "https://#{test8[:un]}:#{test8[:pwd]}@the-internet.herokuapp.com/basic_auth"

  test9 = %{un: "admin", pwd: "admin"}
  @test9un test9[:un]
  @test9pwd test9[:pwd]
  @test9url "https://#{test9[:un]}:#{test9[:pwd]}@the-internet.herokuapp.com/basic_auth"

  # FINALLY!
  test "Test1 > nil:nil = fail" do
    navigate_to(@test1url)
    result = String.contains?(page_source(), "Congratulations!")
    IO.puts("Test1> #{@test1un}:#{@test1pwd} = #{result}")
  end

  test "Test2 > nil:bad = fail" do
    navigate_to(@test2url)
    result = String.contains?(page_source(), "Congratulations!")
    IO.puts("Test2> #{@test2un}:#{@test2pwd} = #{result}")
  end

  test "Test3 > nil:good = fail" do
    navigate_to(@test3url)
    result = String.contains?(page_source(), "Congratulations!")
    IO.puts("Test3> #{@test3un}:#{@test3pwd} = #{result}")
  end

  test "Test4 > bad:nil = fail" do
    navigate_to(@test4url)
    result = String.contains?(page_source(), "Congratulations!")
    IO.puts("Test4> #{@test4un}:#{@test4pwd} = #{result}")
  end

  test "Test5 > good:nil = fail" do
    navigate_to(@test5url)
    result = String.contains?(page_source(), "Congratulations!")
    IO.puts("Test5> #{@test5un}:#{@test5pwd} = #{result}")
  end

  test "Test6 > bad:good = fail" do
    navigate_to(@test6url)
    result = String.contains?(page_source(), "Congratulations!")
    IO.puts("Test6> #{@test6un}:#{@test6pwd} = #{result}")
  end

  test "Test7 > good:bad = fail" do
    navigate_to(@test7url)
    result = String.contains?(page_source(), "Congratulations!")
    IO.puts("Test7> #{@test7un}:#{@test7pwd} = #{result}")
  end

  test "Test8 > bad:bad = fail" do
    navigate_to(@test8url)
    result = String.contains?(page_source(), "Congratulations!")
    IO.puts("Test8> #{@test8un}:#{@test8pwd} = #{result}")
  end

  test "good:good = pass" do
    navigate_to(@test9url)
    result = String.contains?(page_source(), "Congratulations!")
    IO.puts("Test9> #{@test9un}:#{@test9pwd} = #{result}")
  end
end
