---
name: companies-house
description: >-
  Looks up a UK company on the public Companies House register: legal name,
  company number, status, officers, and turnover when the accounts disclose it.
  Use when the user asks for a company number, the legal entity, filed accounts,
  turnover, directors, or Companies House.
when_to_use: >-
  Company number, legal name, filed accounts, turnover, directors, PSC, or
  Companies House. Also /companies-house.
allowed-tools: Read Grep Glob Bash WebFetch
---

# Companies House

Resolve one UK company on the public register. Follow [references/lookup.md](references/lookup.md). No API key.

British English. No emoji. No em dashes.

## Steps

1. Find the company. A number in the footer wins. Otherwise search by name, then by officer if the trading name is not the legal name.
2. Stop if more than one company could be the one they mean. Name the candidates and ask. Do not pick a dissolved twin or a group company on a guess.
3. Read the overview, the officers, and the filing history.
4. Read the latest accounts when a download is linked. Prefer XHTML.
5. Write the block below. Cite the Companies House URL. Do not save the accounts file.

Record the registered office. Do not copy a director's home address into the note or the reply.

## What to write

- Legal name, company number, and the Companies House link
- Status, incorporated date, and previous names when they matter
- SIC and registered office
- Accounts type, and turnover with the year ended, or an explicit "not disclosed"
- Latest year: net assets, cash, and average employees, when the accounts show them
- Next accounts due, when the page shows it
- Active directors, and PSC bands

Turnover that is missing from micro or filleted accounts is a finding. A size ceiling is not a turnover. A figure from any other site is labelled as not from Companies House.

## After the lookup

If the owner keeps a company note, add this block there. Do not start a sales pitch, and do not score a job from this skill.
