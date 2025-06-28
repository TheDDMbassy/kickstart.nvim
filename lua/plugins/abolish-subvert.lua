return {
  'tpope/vim-abolish',

  --[[
  -- In Elixir, I wanted to change "activity" to "reading_room", but
  -- "Activity" to "ReadingRoom".
  --
  -- In the before times, I would have to :%s/activity/reading_room/g
  -- and then run :%s/Activity/ReadingRoom/g to get all the changes to take.
  --
  -- In the new world, simply run one command:
  -- :%Subvert/activity/reading_room/g
  --
  -- (or, in the plural case, :%S/activit{y,ies}/reading_room{,s}/g)
  --
  -- and that's it! That command will turn this:
  --
  # BEFORE
  defmodule ReadsomethingWeb.ActivityHTML do
    use ReadsomethingWeb, :html

    embed_templates "activity_html/*"
  end
  
  # AFTER
  defmodule ReadsomethingWeb.ReadingRoomHTML do
    use ReadsomethingWeb, :html

    embed_templates "reading_room_html/*"
  end
  --]]
}
