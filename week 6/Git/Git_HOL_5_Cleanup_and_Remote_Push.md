# Git HOL 5: Cleanup and Push to Remote Git

## Objectives

- Explain how to clean up and push back to remote Git

In this hands-on lab, you will learn how to:
- Execute steps involving clean up and push back to remote Git.

## Prerequisites

The following are the pre-requisites to complete this hands-on lab:
- Hands-on ID: "Git-T03-HOL_002"

**Note:** Please follow the below steps for creating a free account in GitHub. Do not use cognizant credentials to login to GitHub.

**Estimated time to complete this lab: 10 minutes.**

## Instructions

Please follow the instructions to complete the hands-on. Each instruction expects a command for the Git Bash.

### Step 1: Verify Clean State

- Verify if master is in clean state
- Execute `git status` to ensure no uncommitted changes

### Step 2: List Available Branches

- List out all the available branches
- Review which branches have been merged and which are still pending

### Step 3: Pull from Remote Repository

- Pull the remote git repository to the master
- Execute `git pull origin master` to fetch and integrate remote changes

### Step 4: Push Pending Changes

- Push the changes, which are pending from "Git-T03-HOL_002" to the remote repository
- Execute `git push origin master` to upload local commits to remote

### Step 5: Verify Remote Updates

- Observe if the changes are reflected in the remote repository
- Visit your GitLab or GitHub repository page to confirm push was successful

## Key Git Commands

```
git status                    - Check current repository status
git branch -a                 - List all branches (local and remote)
git pull origin master        - Fetch and merge remote changes
git push origin master        - Push local changes to remote
git log --oneline             - View commit history
git fetch origin              - Fetch remote changes without merging
```

## Cleanup Steps

1. Ensure all work is committed
2. Delete merged branches locally:
   ```
   git branch -d <branch-name>
   ```
3. Delete merged branches on remote:
   ```
   git push origin --delete <branch-name>
   ```
4. Fetch to update branch list:
   ```
   git fetch --prune
   ```

## Remote Repository Workflow

### Before Pushing

```
git status                    - Verify all changes are committed
git log origin/master..master - Check commits not yet pushed
```

### Pushing to Remote

```
git push origin master        - Push to master branch
git push origin <branch>      - Push specific branch
git push origin --all         - Push all branches
```

### Syncing with Remote

```
git pull origin master        - Pull latest changes
git fetch origin              - Get remote updates without merging
git rebase origin/master      - Rebase local commits on top of remote
```

## Best Practices

- Always pull before pushing to avoid conflicts
- Push only tested and working code
- Delete merged branches to keep repository clean
- Use descriptive commit messages
- Review changes before pushing to remote
- Keep local and remote repositories in sync

## Verification Checklist

- All local changes are committed
- Master branch is up to date with remote
- All pending changes are successfully pushed
- Remote repository reflects local changes
- Repository is in clean state with no uncommitted files
