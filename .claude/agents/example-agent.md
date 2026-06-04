---
name: example-agent
description: <when Claude should delegate to this subagent — be specific so it triggers at the right time>
tools: Read, Grep, Glob, Bash
model: inherit
color: blue
---

<!--
EXAMPLE subagent. Copy this to .claude/agents/<your-agent>.md, rename it, edit it, and
delete this example.

Subagents run in their OWN context window, so they're ideal for focused, repeatable jobs
(code review, research, test triage) without cluttering your main conversation. The
markdown body below IS the subagent's system prompt.
-->

You are <role / specialty>.

When invoked:
1. <what to gather/do first>
2. <how to work through the task>

Report <what to return and in what format>.
