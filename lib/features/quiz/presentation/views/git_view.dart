import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/views/widgets/quiz_listview_widget.dart';
import 'package:quiz_app/utils/colors.dart';

import '../models/question_model.dart';
import '../models/quiz_model.dart';

class GitView extends StatefulWidget {
  const GitView({super.key});

  @override
  State<GitView> createState() => _GitViewState();
}

class _GitViewState extends State<GitView> {
  final List<Quiz> _quiz = [
    Quiz(
      lessonIndex: 0,
      title: 'Quiz 1: Basics',
      questions: [
        Question(
          question:
              'What is the purpose of the `git init` command, and what does it do?',
          options: [
            'The `git init` command is used to create a new Git repository, and it initializes a new `.git` directory in the current working directory',
            'The `git init` command is used to clone an existing Git repository, and it downloads the entire repository from a remote server',
            'The `git init` command is used to commit changes to a Git repository, and it saves the changes to the local repository',
            'The `git init` command is used to push changes to a remote Git repository, and it uploads the changes to the remote server'
          ],
          correctAnswer:
              'The `git init` command is used to create a new Git repository, and it initializes a new `.git` directory in the current working directory',
        ),
        Question(
          question:
              'What is the difference between the `git add` and `git commit` commands, and when would you use each?',
          options: [
            'The `git add` command is used to commit changes to a Git repository, while the `git commit` command is used to stage changes for the next commit',
            'The `git add` command is used to stage changes for the next commit, while the `git commit` command is used to commit changes to a Git repository',
            'The `git add` command is used to push changes to a remote Git repository, while the `git commit` command is used to pull changes from a remote repository',
            'The `git add` command is used to pull changes from a remote Git repository, while the `git commit` command is used to push changes to a remote repository'
          ],
          correctAnswer:
              'The `git add` command is used to stage changes for the next commit, while the `git commit` command is used to commit changes to a Git repository',
        ),
        Question(
          question:
              'What is the purpose of the `git log` command, and what does it display?',
          options: [
            'The `git log` command is used to display a list of all commits made to a Git repository, including the commit message, author, and date',
            'The `git log` command is used to display a list of all branches in a Git repository, including the branch name and commit hash',
            'The `git log` command is used to display a list of all remote repositories connected to a Git repository, including the repository URL and branch name',
            'The `git log` command is used to display a list of all files in a Git repository, including the file name and commit hash'
          ],
          correctAnswer:
              'The `git log` command is used to display a list of all commits made to a Git repository, including the commit message, author, and date',
        ),
      ],
    ),
    Quiz(
      lessonIndex: 1,
      title: 'Quiz 2: Intermediate',
      questions: [
        Question(
          question:
              'What is the purpose of the `git branch` command, and how is it used to manage branches in a Git repository?',
          options: [
            'The `git branch` command is used to create a new branch, and it is used by running `git branch <branch-name>`',
            'The `git branch` command is used to switch to a different branch, and it is used by running `git branch <branch-name>`',
            'The `git branch` command is used to delete a branch, and it is used by running `git branch -d <branch-name>`',
            'The `git branch` command is used to list all branches in a Git repository, and it is used by running `git branch -a`'
          ],
          correctAnswer:
              'The `git branch` command is used to create a new branch, and it is used by running `git branch <branch-name>`',
        ),
        Question(
          question:
              'What is the difference between the `git merge` and `git rebase` commands, and when would you use each?',
          options: [
            'The `git merge` command is used to rebase changes from one branch onto another, while the `git rebase` command is used to merge changes from one branch into another',
            'The `git merge` command is used to merge changes from one branch into another, while the `git rebase` command is used to rebase changes from one branch onto another',
            'The `git merge` command is used to squash commits from one branch into another, while the `git rebase` command is used to fast-forward changes from one branch to another',
            'The `git merge` command is used to fast-forward changes from one branch to another, while the `git rebase` command is used to squash commits from one branch into another'
          ],
          correctAnswer:
              'The `git merge` command is used to merge changes from one branch into another, while the `git rebase` command is used to rebase changes from one branch onto another',
        ),
        Question(
          question:
              'What is the purpose of the `git stash` command, and how is it used to temporarily save changes?',
          options: [
            'The `git stash` command is used to commit changes to a Git repository, and it is used by running `git stash save`',
            'The `git stash` command is used to push changes to a remote Git repository, and it is used by running `git stash push`',
            'The `git stash` command is used to temporarily save changes, and it is used by running `git stash save`',
            'The `git stash` command is used to pull changes from a remote Git repository, and it is used by running `git stash pull`'
          ],
          correctAnswer:
              'The `git stash` command is used to temporarily save changes, and it is used by running `git stash save`',
        ),
      ],
    ),
    Quiz(
      lessonIndex: 2,
      title: 'Quiz 3: Advanced',
      questions: [
        Question(
          question:
              'What is the purpose of the `git submodule` command, and how is it used to manage submodules in a Git repository?',
          options: [
            'The `git submodule` command is used to create a new submodule, and it is used by running `git submodule add <repository-url>`',
            'The `git submodule` command is used to update a submodule, and it is used by running `git submodule update --init --recursive`',
            'The `git submodule` command is used to delete a submodule, and it is used by running `git submodule deinit <submodule-name>`',
            'The `git submodule` command is used to list all submodules in a Git repository, and it is used by running `git submodule status`'
          ],
          correctAnswer:
              'The `git submodule` command is used to create a new submodule, and it is used by running `git submodule add <repository-url>`',
        ),
        Question(
          question:
              'What is the difference between the `git cherry-pick` and `git revert` commands, and when would you use each?',
          options: [
            'The `git cherry-pick` command is used to revert a commit, while the `git revert` command is used to apply a commit',
            'The `git cherry-pick` command is used to apply a commit, while the `git revert` command is used to revert a commit',
            'The `git cherry-pick` command is used to squash a commit, while the `git revert` command is used to rebase a commit',
            'The `git cherry-pick` command is used to rebase a commit, while the `git revert` command is used to squash a commit'
          ],
          correctAnswer:
              'The `git cherry-pick` command is used to apply a commit, while the `git revert` command is used to revert a commit',
        ),
        Question(
          question:
              'What is the purpose of the `git filter-branch` command, and how is it used to rewrite commit history?',
          options: [
            'The `git filter-branch` command is used to rewrite commit history, and it is used by running `git filter-branch -d <temporary-directory> --all`',
            'The `git filter-branch` command is used to rebase changes from one branch onto another, and it is used by running `git filter-branch <branch-name>`',
            'The `git filter-branch` command is used to merge changes from one branch into another, and it is used by running `git filter-branch <branch-name>`',
            'The `git filter-branch` command is used to squash commits from one branch into another, and it is used by running `git filter-branch <branch-name>`'
          ],
          correctAnswer:
              'The `git filter-branch` command is used to rewrite commit history, and it is used by running `git filter-branch -d <temporary-directory> --all`',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Git Quiz'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: QuizListViewWidget(quiz: _quiz),
            ),
          ],
        ),
      ),
    );
  }
}
