# Fishbang

Uses abbreviations in order to replicate the various bash bang commands.
This has the advantage of replacing everything inline, so you can be more confident in using them.

## Examples:
-  ``!dnf`` returns the last command that started with dnf
- ``!?abc`` returns the last command that included abc
- ``!3`` returns the 3rd command used. ``!-3`` returns the 3rd most recent command used.
- ``!!`` returns the last command. Taken from the fish documentation
- ``!^`` returns the first argument of the last command
- ``!$`` returns the last argument of the last command
- ``!:n`` returns the nth argument of the last command

## Install


### Installing with [Fisher](https://github.com/jorgebucaran/fisher):

```fish
fisher install brewingweasel/fishbang
```

### Installing with [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish) *should* also work:

```fish
omf install https://github.com/BrewingWeasel/fishbang
```
