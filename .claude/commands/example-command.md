---
description: <one line — what this command does and when to run it>
argument-hint: "[optional args]"
allowed-tools: "Read, Edit, Bash(git *)"
model: inherit
---

<!--
EXAMPLE slash command. Copy this to .claude/commands/<your-command>.md, edit it, and
delete this example.

Commands are saved prompts YOU invoke by typing /<filename>. They run in your current
conversation context. Inside the body you can:
  - inject shell output with a leading "!" + backticks, e.g.  !`git status`
  - inject a file's contents with  @path/to/file
  - use $ARGUMENTS (all args) or $1, $2 (positional)
-->

## Context (optional)
!`git status`

## Your task
1. <step one>
2. <step two>

$ARGUMENTS
