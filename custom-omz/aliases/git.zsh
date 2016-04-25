alias gt='git tag'

# Open all merge conflicts
alias fml='e -O $( git diff --name-only | uniq )'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
