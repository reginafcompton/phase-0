## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

"Tracking" allows developers to manage changes: tracking tells developers when and what they modified, so that they can return to earlier versions while experimenting on a newer one. Tracking, in a sense, works like an insurance plan or "saftey net." Commits present a historical record of every change made to a file or respository: they bookmark milestones in the progress of a project, be it correcting a spelling error or completely overhauling the structure of a program.When a developer commits a change to a file, he or she saves the modification in a local database. In creating a commit, the developer must write a message explaining how the file has changed. Developers have a prefered style guide for writing such messages: the message should be in present tense and may include a head (~50 characters) and a body (~75 characters), possibly followed by additional paragraphs or bullet points (asterisk or dash).

Sometimes a developer decides that she does not want to commit a file. To do so, she can use the HEAD command: git reset --soft HEAD. HEAD^ grabs the file you are on, and HEAD~2 (HEAD~3, HEAD~4, etc.) moves to the second (third, fourth, etc.)file from HEAD^.

Before initiating a commit, the terminal classifies a file into one of three categories: (1) Untracked files, or newly created files, (2) changes not staged for commits, and (3) changes to be commited. Git provides instructions for how to move bewteen the three categories. For example, to "stage" a file – or move from category (2) into (3) – the developer types: git add .

The following list includes the Git commands that I used to clone a respository on my local machine, edit it, commmit changes, and push those to Github:

git clone : to clone a repository on my computer
git remote add : to clone the "original" version of the repository, i.e., not the one forked in my Github account
git remote -v
subl .
git status: to see what has been changed since the last commit
git log: to see all commits
git add : to stage a commit
git commit -m "message text": to commit a change and write a message
git push : to push a commit to a remote location, mainly Github.

After "pushing" a commit to Github, the next step is a pull request, which appears in the repository where the changes are being made. Github clearly displays the pull request in a highlighted bar at the top of the page. This process facilitates teamwork, since it creates a system of checks and balances, in which different team members create and merge pull requests.
