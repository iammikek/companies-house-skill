# Companies House lookup

Search the public register. No API key.

## Find the company

1. Take a company number from the site footer, the privacy page, or the terms, when one is there.
2. Otherwise search by name:

```bash
curl -sL -A "Mozilla/5.0" -H "Accept: application/json" \
  "https://find-and-update.company-information.service.gov.uk/search/companies?q=URL_ENCODED_NAME"
```

3. If the trading name is not the legal name, search officers, or match the registered office to the public office the company itself publishes:

```bash
curl -sL -A "Mozilla/5.0" -H "Accept: application/json" \
  "https://find-and-update.company-information.service.gov.uk/search/officers?q=URL_ENCODED_NAME"
```

4. Open `https://find-and-update.company-information.service.gov.uk/company/NNNNNNNN`.

Record status, incorporated date, SIC, registered office, accounts dates, and previous names.

Confirm this is the right company before writing figures. A similar name, a dissolved twin, or a group company next to the trading company is a common miss. Prefer the entity that employs or invoices.

## Officers

- `https://find-and-update.company-information.service.gov.uk/company/NNNNNNNN/officers`
- `https://find-and-update.company-information.service.gov.uk/company/NNNNNNNN/persons-with-significant-control`

Note active directors, resignations, and PSC bands.

Record the registered office. Do not copy a director's home address into the note or the reply.

## Accounts and turnover

Filing history: `https://find-and-update.company-information.service.gov.uk/company/NNNNNNNN/filing-history`

Prefer an XHTML download (`format=xhtml`) over a PDF when one is linked.

```bash
curl -sL -A "Mozilla/5.0" -o accts.xhtml \
  "https://find-and-update.company-information.service.gov.uk/company/NNNNNNNN/filing-history/DOCUMENT/document?format=xhtml&download=1"
```

Read the iXBRL facts:

| Fact | Typical names |
|---|---|
| Turnover | Turnover, TurnoverRevenue |
| Cash | CashBankOnHand |
| Net assets | NetAssetsLiabilities, Equity |
| Employees | AverageNumberEmployeesDuringPeriod |

| Situation | What to write |
|---|---|
| Turnover or revenue is in the accounts | Turnover, the figure, and the year ended |
| Micro-entity or filleted accounts, balance sheet only | Turnover not disclosed. Still record cash, net assets, and employees when they are there |
| Dormant | Dormant. No trading turnover |
| A figure from somewhere other than Companies House | Label it as not from Companies House |

A small-company or micro size ceiling is not turnover. Do not invent a midpoint. If turnover is absent, say so. That is a finding.

Do not save the accounts file into the repo. Cite the figures and the Companies House URL.

A headcount on a public profile is not the Companies House average. If both exist and they differ, record both and say which is which.

The Companies House API needs a key. This skill does not use it.
