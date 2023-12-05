## Git basic commands

git init
touch .gitignore // only when we want to ignore some file or folder

git add .

git commit -m "You message"

git branch -m main or master

git remote add origin <link-here>

git push -u origin main/master


// IF I'M GETTING ANY ERROR WHILE PUSHING I CAN USE COMMANDS LIKE

1. git pull origin main
2. git push origin main

// IF THE PROBLEM PERSIST, TRY:

1. git fetch origin main
2. git rebase origin/main
3. git rebase --continue
4. git push origin main // finallay it will be pushed on the GitHub
