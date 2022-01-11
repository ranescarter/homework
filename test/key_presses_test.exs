#
# https://the-internet.herokuapp.com/key_presses
# Pressing a key on the keyboard is logged and displayed on the site
#
# I was not able to figure out how to enter items that require the Shift key
# ! @ # { +
# Attempt to send @ returns 2, etc
# hexdocs for Hound mentioned
## with_keys :shift do
## send_text "1"
#
# Not able to figure out > page down CAPS LOCK END
# These show up when manually entered
#
# It appears that lower case letters return as upper case
#
defmodule KeyPresses do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case
  hound_session()
  #
  test KeyPresses do
    navigate_to("https://the-internet.herokuapp.com/key_presses")
    #
    # Modifier keys
    find_element(:id, "target")
    send_keys(:alt)
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: ALT"
    #
    find_element(:id, "target")
    send_keys(:backspace)
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: BACK_SPACE"
    #
    find_element(:id, "target")
    send_keys(:num1)
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: NUMPAD1"
    #
    find_element(:id, "target")
    send_keys(:multiply)
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: MULTIPLY"
    #
    #
    # Characters and numbers
    find_element(:id, "target")
    send_text("a")
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: A"
    #
    find_element(:id, "target")
    send_text("B")
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: B"
    #
    find_element(:id, "target")
    send_text("1")
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: 1"
    #
    find_element(:id, "target")
    send_text("{")
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: OPEN_BRACKET"
    # The symbole { was sent, but the symbol [ was returned
    #
    find_element(:id, "target")
    send_text("[")
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: OPEN_BRACKET"
    #
    #

    # Trying to break it
    find_element(:id, "target")
    send_text("Howdy!  I'm Ranes")
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: S"
    # Returns the last letter sent
    #
    find_element(:id, "target")
    send_text("&&&&&&&&&&")
    Process.sleep(1000)
    assert visible_text({:id, "result"}) == "You entered: 7"
    # The symbols & were sent, but the number 7 was retured
    #
  end
end

"""
Reference
:alt - alt key
:shift - shift key
:command - command key (or meta key)
:control - control key
:escape - escape key
:backspace - backspace key
:tab - tab key
:clear - clear
:return - return key
:enter - enter key
:cancel - cancel key
:help - help key
:pause - pause key
:num0 - numpad 0
:num1 - numpad 1
:num2 - numpad 2
:num3 - numpad 3
:num4 - numpad 4
:num5 - numpad 5
:num6 - numpad 6
:num7 - numpad 7
:num8 - numpad 8
:num9 - numpad 9
:add - add key
:subtract - subtract key
:multiply - multiply key
:divide - divide key
:seperator - seperator key
"""
