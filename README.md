# Pre-Commit Hooks
Collection of pre-commit hooks that can make your life easier :) 

## Installation

### 1. If you don't have `pre-commit` installed in your project:
```
brew install pre-commit # make sure pre-commit is installed in your system
cd ~/<your-project>
pre-commit install
touch .pre-commit-config.yaml
```

### 2. Edit your `.pre-commit-config.yaml` to add hooks from this project:
 - Add (see the list of available hooks below):
  ```
    - repo: git@github.com:jetbridge/pre-commit-hooks.git
      rev: master
      hooks:
        - id: black
        - id: flake8
        - id: pytest
  ```
 - Save `.pre-commit-config.yaml`
 - Stage it:
 ```
 git add .pre-commit-config.yaml
 ```

## Usage
Use `git commit` command to run the hooks and commit staged files.
Use `pre-commit run` to run the hooks without commiting.
Use `pre-commit autoupdate` to update the repo `rev` if you experience any problems running the hooks.

## List of hooks
### Black
Formats your staged files with Black formatter ([black](https://github.com/python/black) should be installed and configured in your project).
If some files have to be fixed, it will fix them and apply `git add` on them so your commit will not be rejected.
### Flake8
Runs flake8 linter to find any problems with file formatting according to specified rules ([flake8](http://flake8.pycqa.org/en/latest/) should be installed and configured in your project).
### Pytest
Runs pytest with flags `-xq`. It means that tests will be run in quiet mode and stopped on the first error or failure.

## Notes
 - Please note that all unstaged files will be stashed once you ran the hooks.
 - Be careful using different linters / formetters at the same time (like `black` and `flake8`). They may have different conflicts so in order to use them together you should solve them first.

## Additional info
Find more about pre-commit hooks [here](https://pre-commit.com/).

## Happy coding!
