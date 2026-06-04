#!/bin/bash
# EXAMPLE hook. Copy this to .claude/hooks/<your-hook>.sh, edit it, wire it in
# .claude/settings.json, and `chmod +x` it.
#
# Hooks run YOUR script on Claude Code lifecycle events:
#   PreToolUse  — before a tool runs (exit 2 = BLOCK the tool call)
#   PostToolUse — after a tool runs (e.g. run tests/linters)
#   Notification — when Claude needs attention
#   Stop        — when Claude finishes a turn
#
# The event arrives as JSON on stdin: {tool_name, tool_input:{...}, hook_event_name, ...}

INPUT=$(cat)

# --- Example: read a field from the JSON (python3 needs no extra packages) ---
# TOOL=$(printf '%s' "$INPUT" | python3 -c 'import sys,json; print(json.load(sys.stdin).get("tool_name",""))')

# --- Example: block on a condition (PreToolUse hooks only) ---
# if <condition>; then
#   echo "Blocked: <reason>" >&2
#   exit 2
# fi

# --- Example: run something after edits (PostToolUse) ---
# <your test or lint command>

exit 0
