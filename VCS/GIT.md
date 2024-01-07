## Git basic commands

1. git init
touch .gitignore // only when we want to ignore some file or folder

2. git add .

3. git commit -m "You message"

4. git branch -m main or master

5. git remote add origin <link here>

6. git push -u origin main/master
or,
git push -f origin main

// IF I'M GETTING ANY ERROR WHILE PUSHING I CAN USE COMMANDS LIKE

1. git pull origin main
2. git push origin main

// IF THE PROBLEM PERSIST, TRY:

1. git fetch origin main
2. git rebase origin/main
3. git rebase --continue
4. git push origin main // finallay it will be pushed on the GitHub

// IF YOU ADDED NODE_MODULES DO THIS:

1. git rm -r --cached node_modules
2. git commit -m "Remove node_modules from tracking"
3. git push origin main



// INTERMEDIATE level

1. ls -a
2. cd .git
3. git log
4. vim this.txt // to open the text editor right in the terminal
5. esc + :wq to save and exit the vim
6. git branch <new_branch>
7. git checkout <branch_name>
8. git checkout -B <brach_name>
9. git switch <branch>
10. git clone <url>


// More..

1. git checkout . => To undo all the changes in your codebase
