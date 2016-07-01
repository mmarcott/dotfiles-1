# oh-my-zsh doesn't expand globs in the custom dir, so this is needed
#
for file ($(find . -name '*.zsh' | grep -v sourcer)); do
  source $file
done
