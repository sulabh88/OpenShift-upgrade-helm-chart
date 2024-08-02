# Introduction

Thank you for considering contributing to this project. It's intended that this is operated in an Open Source Software style, and contributions of bug fixes and new features help to ensure that we gain the most benefit of our shared experience within dummy dummy. Reusing code across the organisation is cost-effective and allows us to focus on the stuff that really matters: delivering business value to our stakeholders. Let's end the constant reinvention of the wheel.

Following these guidelines helps to communicate that you respect the time of the original developers of this software. In return, they should reciprocate that respect in addressing your issue, assessing changes, and helping you finalise your pull requests.

There are many ways to contribute, from writing tutorials or blog posts, improving the documentation, submitting bug reports and feature requests or writing code.

In general, bug reports and feature requests will only be tackled if another contributor has a need for this, so don't expect a free lunch!

# Ground Rules
* Create issues for any major changes and enhancements that you wish to make. Discuss things transparently and get community feedback.
* Each pull request should implement ONE feature or bug fix. If you want to add or fix more than one thing, submit more than one pull request.
* Each pull request should contain a complete change with associated tests.  The test suite must pass after the pull request is accepted.
* Do not commit changes to files that are irrelevant to your feature or bug fix (eg: .gitignore).
* If a maintainer asks you to "rebase" your PR, they're saying that a lot of code has changed, and that you need to update your branch so it's easier to merge.

# Getting started
Please review the README.md file for details of how to build and run the code/tests.

# How to report a bug
The intention of this code is that it is as free from defects as possible, and has been battle-tested in production.  Unexpected issues, corner-cases and mistakes may occasionally occur.  If this is impacting the correct behaviour of the software for your use cases, feel free to raise a Bug in JIRA which describes the issue, and where at all possible include a failing software test case that demonstrates the defect.  This would ideally then form the part of the pull request that fixes the defect.

# How to suggest a feature or enhancement
If you find yourself wishing for a feature that doesn't exist, you are probably not alone. There are bound to be others out there with similar needs. Many of the features exist today have been added because our users saw the need. Create a New Feature in JIRA which describes the feature you would like to see, why you need it, and how it should work.

Ideally, then create a pull request with the feature implemented, and tested.  If necessary, reach out to the contributor team to get further explanation of the code and its operation.

# Creating a Pull Request

## Create your branch from `master`
At any given time, the project's `master` branch represents the version
currently under development. For example, if 3.1.1 was the latest release,
`master` represents 3.2.0 development, and the `3.1.x` branch represents 3.1.2 development.

Create your topic branch to be submitted as a pull request from `master`.

## Use short branch names
Branches used when submitting pull requests should preferably be named
according to JIRA issues, e.g. 'SPRINGBOOT-1234'. Otherwise, use succinct, lower-case,
dash (-) delimited names, such as 'fix-warnings', 'fix-typo', etc. This is
important, because branch names show up in the merge commits that result from
accepting pull requests, and should be as expressive and concise as possible.

## Squash commits
Use `git rebase --interactive`, `git add --patch` and other tools to "squash"
multiple commits into atomic changes. In addition to the man pages for git,
there are many resources online to help you understand how these tools work.
Here is one: http://book.git-scm.com/4_interactive_rebasing.html.

## Code, commit message and labelling conventions
Submitted code should follow the prevailing standard, which is largely based on standard Java coding style incorporated in IntelliJ.
> Always use spaces, not tabs

Odyssey will enforce some convention around commit labels. Otherwise, [here](https://chris.beams.io/posts/git-commit/) is a good overview of the approach to follow.  The key part is this:

>1. Separate subject from body with a blank line (and include the JIRA Id)
>2. Limit the subject line to 50 characters
>3. Capitalise the subject line
>4. Do not end the subject line with a period
>5. Use the imperative mood in the subject line
>6. Wrap the body at 72 characters
>7. Use the body to explain what and why vs. how

## Run all tests prior to submission

See the the README for instructions. Make
sure that all tests pass prior to submitting your pull request.


## Submit your pull request

Follow the same conventions for pull request subject lines and body test as mentioned above
for commit messages.


# Code review process
Pull requests will be reviewed by the core team.  In order to maintain focus, the core team will start small, but can be expanded to include others to allow greater flexibility and scale.

# Acknowledgements
Liberally plagiarised from [here](https://github.com/spring-projects/spring-framework/blob/30bce7/CONTRIBUTING.md)
and [here](https://github.com/nayafia/contributing-template/blob/master/CONTRIBUTING-template.md)
