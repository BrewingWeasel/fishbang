function last_history_item
  echo $history[1]
end

function nth_history_item
  # Times by negative one because in fish $history[1] is the last used command
  # while running !1 in bash returns the first command in your history ($history[-1] in fish)
  set index (math (echo $argv[1] | cut -c 2- ) x -1)
  echo $history[$index]
end

function _nth_history_arg
  echo $history[1] | read -t --list args
  for _i in (seq 1 (math (count $args) - $argv[1]))
    commandline -f history-token-search-backward
  end
end

function last_history_arg
  commandline -f history-token-search-backward
end

function first_history_arg
  _nth_history_arg 1
end

function nth_history_arg
  _nth_history_arg (echo $argv[1] | cut -c 3-)
end

function history_prefix_search
  set cmd (echo $argv[1] | cut -c 2- )
  history -p $cmd | head -n 1
end

function history_search
  set cmd (echo $argv[1] | cut -c 3- )
  history $cmd | head -n 1
end