### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "$HOME/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

fish_vi_key_bindings
bind -M insert \r __enter_or_newline
bind -M default \r __enter_or_newline

# Emulates vim's cursor shape behavior
# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursors to an underscore
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore
# Set the external cursor to a line. The external cursor appears when a command is started.
# The cursor shape takes the value of fish_cursor_default when fish_cursor_external is not specified.
set fish_cursor_external line
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block
set fish_vi_force_cursor 1

# Theme
set -g theme_display_vi yes

# Added by `rbenv init` on Fri Dec 27 17:42:58 JST 2024
# status --is-interactive; and rbenv init - --no-rehash fish | source

###
### Paths
###

fish_add_path $HOME/.cargo/bin


###
### User defined variables
###
set -gx CLAUDE_CODE_EFFORT_LEVEL high
# eval (direnv hook fish)


###
### Abbrs & aliases
###

alias fr 'source ~/.config/fish/config.fish'
alias fs 'nvim ~/.config/fish'

# Git
abbr ga 'git add'
abbr gau 'git add -u'
abbr gap 'git add -p'
abbr gc 'git commit -m \''
abbr gcp 'git cherry-pick'
abbr gd 'git diff'
abbr gdm 'git diff origin/main...HEAD'
abbr gdn 'git diff origin/main...HEAD --name-only'
abbr gds 'git diff --staged'
abbr gf 'git fetch'
abbr gg 'git log -15 --oneline'
abbr ggp 'git log -15 --oneline --first-parent --no-merges'
abbr gl 'git pull origin $(git rev-parse --abbrev-ref HEAD)'
abbr glom 'git pull origin main'
abbr glr 'git pull --rebase origin $(git rev-parse --abbrev-ref HEAD)'
abbr gp 'git push origin HEAD'
abbr gpf 'git push origin HEAD --force'
abbr gpv 'git push origin HEAD --no-verify'
abbr gpvf 'git push origin HEAD --no-verify --force'
abbr gpfv 'git push origin HEAD --no-verify --force'
abbr gr 'git restore'
abbr gr. 'git restore .'
abbr gs 'git switch'
abbr gsc 'git switch -c'
abbr gS 'git stash'
abbr gt 'git status'

# Ruby, Rails
# abbr irb 'RUBYOPT="-W0" irb'

# docker compose
abbr dc 'docker compose'
abbr dca 'docker compose attach'
abbr dcr 'docker compose run -it'
abbr dce 'docker compose exec -it'

# docker compose + Rails
abbr dccop 'docker compose run -it puma bundle exec rubocop'
abbr dcbundle 'docker compose run -it puma bundle'
abbr dcrails 'docker compose run -it puma bundle exec rails'
abbr dctest 'docker compose run -it --remove-orphans puma bundle exec rspec --format documentation'
abbr dctestf 'docker compose run -it --remove-orphans puma bundle exec rspec --format documentation --dry-run --order defined'
abbr dctesto 'docker compose run -it --remove-orphans puma bundle exec rspec --format documentation --order defined'
abbr dctestm 'docker compose run -it puma bundle exec rails db:migrate RAILS_ENV=test'
abbr dcjest 'docker compose run puma yarn test'

abbr xcop 'git diff origin/main...HEAD --name-only --diff-filter=AMRC | grep -e ".*\.rb" | xargs docker compose run --rm -T --no-deps puma bundle exec rubocop --force-exclusion'
abbr xtest 'git diff origin/main...HEAD --name-only --diff-filter=AMRC | grep -e ".*\.rb" | xargs docker compose run -it --rm puma bundle exec rspec --format documentation'


# Others
alias tuisky 'tuisky --num-columns=2 --config ~/.config/tuisky/config.toml'
abbr n 'nvim'
abbr n. 'nvim .'
abbr ll 'ls -l'
abbr lla 'ls -la'
abbr f 'fg'
abbr j 'jobs'
abbr c 'claude'

$HOME/.local/bin/mise activate fish | source

eval "$(/opt/homebrew/bin/brew shellenv)"
