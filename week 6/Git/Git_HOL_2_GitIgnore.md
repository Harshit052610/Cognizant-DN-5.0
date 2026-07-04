# Git HOL 2: Git Ignore

## Objectives

- Explain git ignore
- Explain how to ignore unwanted files using git ignore

In this hands-on lab, you will learn how to:
- Implement git ignore command to ignore unwanted files and folders

## Prerequisites

The following are the pre-requisites to complete this hands-on lab:
- Setting up Git environment
- Integrate notepad++ as a default editor
- A Git repository in the local system and a remote repository in GitLab

**Note:** Please follow the below steps for creating a free account in GitHub. Do not use cognizant credentials to login to GitHub.

**Estimated time to complete this lab: 20 minutes.**

## Exercise Objective

Create a ".log" file and a "log folder" in the working directory of Git. Update the ".gitignore" file in such a way that on committing, these files (.log extensions and log folders) are ignored.

Verify if the git status reflects the same about working directory, local repository and git repository.

## Steps

### Step 1: Create unwanted files and folders

- Create a ".log" file in your Git working directory
- Create a "log" folder in your Git working directory

### Step 2: Create and configure .gitignore

- Create a ".gitignore" file in the root of your repository
- Add patterns to ignore:
  - All files with .log extension: `*.log`
  - The entire log folder: `log/`

### Step 3: Verify Git status

- Execute `git status` to verify that the .log files and log folder are not shown in the untracked files
- The working directory should show clean status for ignored items

### Step 4: Add .gitignore to repository

- Add the .gitignore file itself to the repository:
  ```
  git add .gitignore
  ```
- Commit the changes:
  ```
  git commit -m "Add gitignore file"
  ```

## Verification

- Git status should not show any .log files or log folder contents as untracked
- All ignored files should remain in working directory but not tracked by Git
- .gitignore file should be tracked and committed to the repository

## Key Concepts

- `.gitignore` file tells Git which files and directories to ignore
- Patterns can be specific files or use wildcards
- The .gitignore file itself should be tracked and committed
- Multiple patterns can be added on separate lines
