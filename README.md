# companies-house-skill

Look up a UK company on Companies House. The agent finds the legal entity, the company number, and turnover when the filed accounts disclose it.

No API key. The public search pages are enough.

## Install

Symlink the skill so a change in this repo is live. Do not copy onto the symlink: that writes back into this repo.

### Cursor

```bash
mkdir -p ~/.cursor/skills
ln -s /path/to/companies-house-skill/skill ~/.cursor/skills/companies-house
```

### Claude Code

```bash
mkdir -p ~/.claude/skills
ln -s /path/to/companies-house-skill/skill ~/.claude/skills/companies-house
```

In Claude Code the skill is also the `/companies-house` command.

This skill is on the shelf at [agent-skills](https://github.com/iammikek/agent-skills).

## What a lookup returns

Legal name, company number, status, incorporated date, SIC, registered office, officers, and accounts. Turnover when the accounts disclose it. When they do not, the note says so.

The agent does not save the accounts file. It cites the figures and the Companies House page.
