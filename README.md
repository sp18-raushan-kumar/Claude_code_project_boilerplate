# Claude Code Project Template

A blank, stack-agnostic starting point for building projects with **Claude Code**. It gives
you the folder structure, a settings/permissions skeleton, and one **example** of each
artifact type (command, hook, skill, subagent). You delete the examples and add your own.

## Structure

```
.
├── CLAUDE.md                 # operating manual (fill in the sections)
├── .env.example              # copy to .env, add secrets (gitignored)
├── .gitignore
├── docs/                     # fill-in doc templates
│   ├── PRD.md  ARCHITECTURE.md  PROJECT_STATUS.md  CHANGELOG.md
└── .claude/
    ├── settings.json                 # permissions + a hooks skeleton
    ├── settings.local.json.example   # personal overrides (copy to settings.local.json)
    ├── agents/example-agent.md       # subagent template
    ├── hooks/example-hook.sh         # event-script template
    ├── commands/example-command.md   # /slash-command template
    └── skills/example-skill/SKILL.md # auto-triggered skill template
```

**Commands vs. skills:** a *command* is something you invoke with `/name`; a *skill* is
something Claude triggers on its own when a task matches its description. A *subagent* is a
specialist Claude delegates to in a separate context. A *hook* is a script that runs
deterministically on Claude Code events.

## Getting started

1. **Fill `CLAUDE.md`** — the highest-leverage file; Claude reads it every session.
2. **Write `docs/PRD.md`** — your spec (what you're building, the stack, the milestones).
3. **Build your `.claude/` artifacts** — for each `example-*` file: copy it to a real name,
   edit it, then delete the example. (Keeping at least one file per folder is what preserves
   the folder in git.)
4. **Wire it up in `.claude/settings.json`** — set the `Edit(...)` globs to your source/test
   dirs, and point the `hooks` entries at the hook scripts you created.
5. **Initialize:**
   ```bash
   cp .env.example .env                                          # add your keys
   cp .claude/settings.local.json.example .claude/settings.local.json   # optional
   chmod +x .claude/hooks/*.sh
   git init -b main
   ```

## A workflow that pairs well with this (Plan → Setup → Build)

- **Plan:** answer "what am I building?" and "what are the milestones?", let Claude interview
  you, and capture it in `docs/PRD.md`.
- **Setup:** this template — fill the docs and build your hooks/commands/skills/agents.
- **Build:** use plan mode for non-trivial work; when you hit a bug, fix it *and* add a rule
  to `CLAUDE.md` §9 so Claude won't repeat it.

## Requirements
- [Claude Code](https://claude.com/claude-code) · `git` · `python3` on PATH (hooks use it to parse JSON)
