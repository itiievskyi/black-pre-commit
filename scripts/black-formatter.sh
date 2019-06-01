# get a list of staged .py files
staged=$(git diff --name-only --cached | grep -o '.*.py$')

# check and format with Black
black $staged

# get a list of unstaged .py files
unstaged=$(git diff --name-only | grep -o '.*.py$')

# find an intersections for staged and unstaged files
# if there is a file existed in both lists, we will stage it (via `git add`)
for item in $unstaged; do
    if [[ $staged =~  ([[:<:]]$item[[:>:]])  ]] ; then
        echo $item
    fi
done