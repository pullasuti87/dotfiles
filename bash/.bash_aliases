alias clean="sudo apt autoremove"
alias install="sudo apt install"
alias py="python3"
alias text="gnome-text-editor"
alias update="sudo apt update && sudo apt upgrade"
# alias upgrade="sudo apt upgrade"
# alias vi="gvim -v"
alias vi="vim"
alias nv="nvim"

##### fzf aliases/functions  #####
alias fd="cd ~ && cd \$(find * . -type d | fzf)"
# alias ff='cd "$(dirname "$(find ~ -type f | fzf)")"'

# fd() {
#      local selected_folder
# selected_folder=$(find * . -type d | fzf) && code -r "$selected_folder"
# }

 ff() {
    local selected_file
    selected_file=$(find ~ -type f | fzf) && vi "$selected_file"
 }

##### npm related aliases #####
# alias live="live-server . --browser=firefox"

# # set up a python environment
# pysetup() {
#     # create a virtual environment
#     python3 -m venv .venv
#     # activate virtual environment
#     source .venv/bin/activate
#     # install required packages (Neovim)
#     pip install "python-lsp-server[all]" python-lsp-black
#     # install completed
#     echo "python development environment set up with '.venv' virtual environment."
# }
#
# # install code formatter prettier (Neovim)
# tssetup() {
#      npm i prettier
#  }

# # install code styling StyLua (Neovim)
# luasetup() {
# # has to be binary to work
# npm i @johnnymorganz/stylua-bin
# }
