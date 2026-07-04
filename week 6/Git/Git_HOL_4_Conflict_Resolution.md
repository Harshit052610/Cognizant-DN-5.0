# Git HOL 4: Conflict Resolution

## Objectives

- Explain how to resolve the conflict during merge.

In this hands-on lab, you will learn how to:
- Implement conflict resolution when multiple users are updating the trunk (or master) in such a way that it results into a conflict with the branch's modification.

## Prerequisites

The following are the pre-requisites to complete this hands-on lab:
- Hands-on ID: "Git-T03-HOL_001"

**Note:** Please follow the below steps for creating a free account in GitHub. Do not use cognizant credentials to login to GitHub.

**Estimated time to complete this lab: 30 minutes.**

## Instructions

Please follow the instructions to complete the hands-on. Each instruction expects a command for the Git Bash.

### Step 1: Prepare Master Branch

- Verify if master is in clean state.

### Step 2: Create and Modify Feature Branch

- Create a branch "GitWork"
- Add a file "hello.xml" to the branch
- Update the content of "hello.xml" and observe the status
- Commit the changes to reflect in the branch

### Step 3: Modify Master with Conflicting Changes

- Switch to master
- Add a file "hello.xml" to the master with different content than previous
- Commit the changes to the master

### Step 4: Observe Divergent Branches

- Observe the log by executing "git log –oneline –graph –decorate –all"
- Check the differences with Git diff tool

### Step 5: Visualize Differences

- For better visualization, use P4Merge tool to list out all the differences between master and branch

### Step 6: Merge and Handle Conflicts

- Merge the branch to the master
- Observe the git mark up showing conflict markers
- Use 3-way merge tool to resolve the conflict

### Step 7: Complete Merge

- Commit the changes to the master, once done with conflict resolution

### Step 8: Cleanup and Sync

- Observe the git status and add backup file to the .gitignore file
- Commit the changes to the .gitignore
- List out all the available branches
- Delete the branch, which merge to master
- Observe the log by executing "git log –oneline –graph –decorate"

## Key Git Commands

```
git branch <branch-name>           - Create a new branch
git checkout <branch-name>         - Switch to a branch
git diff <branch1> <branch2>       - Show differences between branches
git merge <branch-name>            - Merge a branch into current branch
git log --oneline --graph --decorate --all  - View all branches history
git branch -d <branch-name>        - Delete a branch
```

## Conflict Resolution Steps

1. Identify conflicted files
2. Open conflicted files and look for conflict markers:
   - `<<<<<<<` - Start of conflict (current branch)
   - `=======` - Separator
   - `>>>>>>>` - End of conflict (incoming branch)
3. Edit the file to resolve conflicts
4. Use P4Merge or other merge tools for visual resolution
5. Stage the resolved files: `git add <filename>`
6. Complete the merge: `git commit -m "Resolve merge conflicts"`

## Conflict Markers Example

```xml
<<<<<<<< HEAD
<name>Current Branch Version</name>
========
<name>Incoming Branch Version</name>
>>>>>>> GitWork
```

## Key Concepts

- Conflicts occur when the same file is modified differently in different branches
- Git cannot automatically resolve these conflicts
- Manual intervention is required to choose the correct version
- P4Merge tool provides visual 3-way merge interface
- After resolving conflicts, stage and commit the changes
- Backup files (.orig) can be ignored in .gitignore
