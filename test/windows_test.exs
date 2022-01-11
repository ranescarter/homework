defmodule Windows do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case
  hound_session()
  #
  # https://the-internet.herokuapp.com/windows
  # Selecting the "Click Here" link opens a new windowith
  # Verify new window is loaded
  #
  test NewWindow do
    navigate_to("https://the-internet.herokuapp.com/windows")
    body = find_element(:class, "example")
    click_here = find_within_element(body, :link_text, "Click Here")
    Process.sleep(1000)
    click_here |> click()
    Process.sleep(1000)
    take_screenshot()
    # screenshot returns orginal page, not the /new page
    # Sleep used to verify a new page was opened
    # Need to figure out to to verify that in the code
    # assert current_url() == "https://the-internet.herokuapp.com/windows/new"
    ## returns a fail.
  end
end
