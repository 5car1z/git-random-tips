
alias gf='git fetch && random_git_tip'
alias gfa='git fetch --all --prune && random_git_tip'
alias gfo='git fetch origin && random_git_tip'

alias gl='git pull && random_git_tip'

alias gp='git push && random_git_tip'
alias gpoat='git push origin --all && git push origin --tags && random_git_tip'

random_git_tip() {
  tips_index=( $(seq 0 $(jq "length" ~/.git-tips/tips.json) | sort -R | head -1) )
  echo "--------------------------------------------------------------"
  jq ".[$tips_index] | .title, .tip" ~/.git-tips/tips.json
}
