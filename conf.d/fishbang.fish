# Commmands
abbr -a bang_history_prefix_search --position anywhere --regex '!([a-zA-Z0-9_.-]*)' --function history_prefix_search # !dnf returns the last command that started with dnf
abbr -a bang_history_search --position anywhere --regex '!\?([a-zA-Z0-9_.-]*)' --function history_search # !?abc returns the last command that included abc

abbr -a bang_negative_nth_history_item --position anywhere --regex '!-?([0-9]*)' --function nth_history_item  # !3 returns the 3rd command used. !-3 returns the 3rd most recent command used.
abbr -a !! --position anywhere --function last_history_item # !! returns the last command. Taken from the fish documentation

# Arguments
abbr -a !^ --position anywhere --function first_history_arg # !^ returns the first argument of the last command
abbr -a !\$ --position anywhere --function last_history_arg # !$ returns the last argument of the last command
abbr -a bang_nth_arg --position anywhere --regex '!:([0-9]*)' --function nth_history_arg # !$ returns the last argument of the last command
