# Git HOL 3: Branching and Merging

## Objectives

- Explain branching and merging  
- Explain about creating a branch request in GitLab
- Explain about creating a merge request in GitLab

In this hands-on lab, you will learn how to:
- Construct a branch, do some changes in the branch, and merge it with master (or trunk)

## Prerequisites

The following are the pre-requisites to complete this hands-on lab:
- Setting up Git environment with P4Merge tool for Windows

**Note:** Please follow the below steps for creating a free account in GitHub. Do not use cognizant credentials to login to GitHub.

**Estimated time to complete this lab: 30 minutes.**

## Instructions

Please follow the instruction to complete the hands-on. Each instruction expects a command for the Git Bash.

### Branching

- Create a new branch "GitNewBranch"

- List all the local and remote branches available in the current trunk. Observe the "*" mark which denote the current pointing branch.

- Switch to the newly created branch. Add some files to it with some contents.

- Commit the changes to the branch.

- Check the status with "git status" command.

### Merging

- Switch to the master

- List out all the differences between trunk and branch. These provide the differences in command line interface.

- List out all the visual differences between master and branch using P4Merge tool.

- Merge the source branch to the trunk.

- Observe the logging after merging using "git log –oneline –graph –decorate"

- Delete the branch after merging with the trunk and observe the git status.

## Key Git Commands

```
git branch <branch-name>           - Create a new branch
git branch -a                      - List all branches
git checkout <branch-name>         - Switch to a branch
git diff <branch1> <branch2>       - Show differences between branches
git merge <branch-name>            - Merge a branch into current branch
git log --oneline --graph --decorate  - View branch history
git branch -d <branch-name>        - Delete a branch
```

## Workflow Summary

1. Create a feature branch from master
2. Make changes and commit to the feature branch
3. View differences between feature and master
4. Merge feature branch back into master
5. Delete the feature branch after successful merge
6. Verify final state with git log

## Merge Conflicts

If merge conflicts occur:
- Edit the conflicted files to resolve differences
- Use P4Merge tool for visual conflict resolution
- Stage the resolved files
- Complete the merge with a commit
