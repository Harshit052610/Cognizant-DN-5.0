# Week 6 - Hands-On Exercises

This folder contains organized hands-on exercises for Week 6 of the Digital Nurture 5.0 - .NET Full Stack Engineer Track.

## Folder Structure

```
week_6/
├── Git/
│   ├── Git_HOL_1_Setup_and_Configuration.md
│   ├── Git_HOL_2_GitIgnore.md
│   ├── Git_HOL_3_Branching_and_Merging.md
│   ├── Git_HOL_4_Conflict_Resolution.md
│   └── Git_HOL_5_Cleanup_and_Remote_Push.md
├── Angular/
│   └── Angular_HandsOn_Exercises.md
└── README.md
```

## Git Hands-On Labs

### Overview
The Git hands-on labs cover essential version control concepts and workflow management using Git and GitHub/GitLab.

### Exercises

#### HOL 1: Setup and Configuration
- Install and configure Git on your machine
- Setup Git user credentials
- Integrate Notepad++ as default editor
- Create and manage your first repository
- **Duration:** 30 minutes

#### HOL 2: Git Ignore
- Understand .gitignore functionality
- Configure ignored files and folders
- Manage unwanted files in repositories
- **Duration:** 20 minutes

#### HOL 3: Branching and Merging
- Create feature branches
- Switch between branches
- Merge branches back to master
- Visualize branch history
- **Duration:** 30 minutes

#### HOL 4: Conflict Resolution
- Handle merge conflicts
- Use P4Merge for visual conflict resolution
- Resolve conflicting changes in code
- **Duration:** 30 minutes

#### HOL 5: Cleanup and Remote Push
- Cleanup local repositories
- Sync with remote repositories
- Push changes to remote Git
- **Duration:** 10 minutes

## Angular Hands-On Exercises

### Overview
The Angular hands-on exercises build a complete Student Course Portal application with 10 progressive exercises covering fundamental to advanced concepts.

### Exercise Track

All exercises build a single project: **Student Course Portal**

| # | Title | Level | Topics | Time |
|---|-------|-------|--------|------|
| 1 | Environment Setup & Project Structure | Beginner | CLI, components, modules | - |
| 2 | Data Binding & Component Communication | Beginner | Bindings, lifecycle hooks, @Input/@Output | - |
| 3 | Directives & Pipes | Beginner | *ngIf, *ngFor, custom directives, pipes | - |
| 4 | Template-Driven Forms | Intermediate | Forms, validation, error handling | - |
| 5 | Reactive Forms | Intermediate | FormBuilder, custom validators, FormArray | - |
| 6 | Services & Dependency Injection | Intermediate | Services, DI, singleton pattern | - |
| 7 | Angular Routing | Intermediate | Routes, guards, lazy loading | - |
| 8 | HTTP Client & Interceptors | Advanced | API integration, RxJS, interceptors | - |
| 9 | NgRx State Management | Advanced | Store, actions, reducers, effects, selectors | - |
| 10 | Unit Testing | Advanced | Jasmine, Karma, TestBed, mocking | - |

### Prerequisites for Angular

- Node.js (LTS 20+) with npm
- Angular CLI v20
- VS Code with Angular Language Service extension
- Chrome with Angular DevTools extension
- JSON Server for mocking APIs

### Installation

```bash
npm install -g @angular/cli
ng new student-course-portal --routing --style=css
cd student-course-portal
npm install
ng serve
```

## Key Concepts Covered

### Git
- Version control workflows
- Branching strategies
- Merge conflict resolution
- Remote repository management
- Collaborative development

### Angular
- Component architecture
- Angular data binding
- Reactive programming with RxJS
- Form handling (template-driven and reactive)
- Routing and navigation
- HTTP client and API integration
- State management with NgRx
- Unit testing with Jasmine/Karma
- Dependency injection
- Services and separation of concerns

## How to Use These Exercises

1. **Start with Git** - Complete all 5 Git HOL exercises in order
2. **Move to Angular** - Complete all 10 Angular exercises sequentially
3. **Don't Skip** - Each exercise builds on previous knowledge
4. **Hands-On Practice** - Type all code yourself, don't just copy-paste
5. **Test Your Work** - Verify each step with the expected outcomes
6. **Review Hints** - Pay attention to hints for best practices

## Submission Guidelines

### For Angular Project
- Organize solutions in: `Angular_HandsOn/<YourName>/`
- Keep all exercises in the same project
- Exclude `node_modules` (add to .gitignore)
- Push to GitHub and share repository URL

### For Git Exercises
- Create and manage repositories as instructed
- Maintain clean commit history
- Practice pushing to remote repositories

## Technical Stack

**Git:**
- Git Bash
- GitHub/GitLab
- P4Merge (for visual conflict resolution)
- Notepad++ (as editor)

**Angular:**
- Node.js & npm
- Angular 20.0
- TypeScript
- RxJS
- NgRx
- Jasmine & Karma
- JSON Server

## Resources

- Angular Official Documentation: https://angular.io
- Angular DevTools: https://angular.io/tools/devtools
- Git Documentation: https://git-scm.com/doc
- RxJS Documentation: https://rxjs.dev
- NgRx Documentation: https://ngrx.io

## Notes

- No comments in or out in code (keep code clean)
- Follow Angular style guide and best practices
- Write meaningful commit messages
- Test all functionality before committing
- Use semantic versioning for tags

## Support

If you encounter issues:
1. Check the hints provided in each exercise
2. Refer to official documentation links
3. Review previous exercises for reference
4. Ensure all prerequisites are installed correctly

## Completion Checklist

### Git Exercises
- [ ] HOL 1: Git configuration complete
- [ ] HOL 2: .gitignore working properly
- [ ] HOL 3: Branches created and merged
- [ ] HOL 4: Conflicts resolved successfully
- [ ] HOL 5: Changes pushed to remote

### Angular Exercises
- [ ] HOL 1: Project setup and structure understood
- [ ] HOL 2: Data binding and communication working
- [ ] HOL 3: Directives and pipes implemented
- [ ] HOL 4: Template-driven forms functional
- [ ] HOL 5: Reactive forms with validation
- [ ] HOL 6: Services and DI configured
- [ ] HOL 7: Routing and guards implemented
- [ ] HOL 8: HTTP client and interceptors working
- [ ] HOL 9: NgRx state management functional
- [ ] HOL 10: Unit tests with good coverage

## Tips for Success

1. **Type Code Yourself** - Don't copy-paste; understand each line
2. **Read Error Messages** - They tell you exactly what's wrong
3. **Use Browser DevTools** - Inspect elements and debug with Angular DevTools
4. **Test Incrementally** - Run `ng serve` and test after each change
5. **Review Git History** - Use `git log` to understand commits
6. **Practice Commands** - Repeat git commands until they're muscle memory
7. **Ask Questions** - Don't hesitate to research and understand why, not just how

---

**Good luck with your hands-on exercises! Enjoy the learning journey!**
