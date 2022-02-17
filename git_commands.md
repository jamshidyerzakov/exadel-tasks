git clone git@github.com:nvrbckdown/exadel-task1.git
cd exadel-tasks
mkdir Task1
cd Task1 && touch README.md
git add .
git commit -m "[add]: Task1 readme"
git push origin master
git branch -c dev
git checkout dev
touch test.md
git commit -m "[add]: test file"
git push origin master
git branch -c jamshid-new_feature
git checkout jamshid-new_feature
touch README.md
git status
touch .gitignore
echo "!.gitignore" > .gitignore
echo "*." > .gitignore
git add .
git commit -m "" && git push origin jamshid-new_feature
echo "Change commit from jamshid-new_feature branch" > README.md
git add . && git commit -m "README.md file edited"
git revert HEAD
git log > log.txt
git branch -D jamshid-new_feature
git push origin --delete jamshid-new_feature
vim git_commands.md
git pull origin dev
git add . && git commit -m "add git_commands.md file" && git push origin dev
