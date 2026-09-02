# Explain everything

Written for humans who clone these repos and wonder what they are looking at.

## 1. Why three websites

Kaspa after Toccata can run covenants (scripts that constrain UTXOs). That is not Ethereum. You cannot paste Uniswap here.

People still want two things dApps on other chains get from **stables**:

1. **Boring fees** — a sequenced job should not surprise you when KAS/USD moves.
2. **A unit of account for goods** — a cup should be tagged in something that feels like a dollar.

Those are different problems.

Covenants can lock **work** (grams of KIP-21 mass). They cannot mint **USD**. So we did not ship a fake kUSD token. We shipped:

- **Gramlane** for (1)
- **Kaspa Till** for (2), with the dollar slot reserved until a real L1 issuer or vault exists
- **KNS** so both have names, agent cards, and wallets

No L2. Bridged USDC on Igra exists in the wild; this product does not use it.

## 2. KNS (`:8080`)

Live data comes from `api.knsdomains.org`. A `.kas` name is an inscription. Consensus does not know the string `alice`. Uniqueness is indexer FCFS.

On top of that this process **synthesizes**:

- HTML site `/site/{name}`
- ERC-8004-**shaped** agent card (there is no Kaspa ERC-8004 contract)
- MCP tools (`resolve_kas`, `agent_card`, `pay_kas`, `quote_work`, …)
- HTTP 402 with a `kaspa:` payTo and optional Work Credit grams
- Wallet catalog

KaChat / Kassword / KasRanks are **pointers**. This app does not encrypt chat, store passwords, or look up the KASRANKS NFT.

Compiled Silverscript (not deployed): `KasName.sil`, `KaChatPayTimeout.sil`, `WorkCredit.sil`.

## 3. Gramlane (`:8081`)

Jobs (resolve a name, read BlockDAG, …) have a **gram** price.

```
1 Work Credit = 1 KIP-21 gram
policy quote: 100 sompi/gram  →  1_000_000 grams = 1 KAS
```

HTTP 402 until you pass `X-Work-Credit` or `X-Kaspa-Payment`. That header is accepted at HTTP layer only — we do not broadcast Toccata spends yet. The covenant `WorkCredit.sil` is the intended ledger: issuer mints grams, holder+issuer consume them.

This is the same *shape* as a stable for **fees** (a boring number) with different *backing* (a work voucher, not Circle).

## 4. Kaspa Till (`:8082`)

The shelf is already in `kUSD` (6 decimals). Status: **reserved, not live**.

Today you pay KAS at a **merchant-posted** sompi-per-1.00 rate (demo default 0.10 KAS per 1.00). That is a sign on the till, not an oracle.

402 accepts:

- `kaspa` / KAS / live
- `kaspa-l1-stable` / kUSD / not live

When a KCC-20 (capitalized issuer) or overcollateral KAS vault lands on L1, the catalog does not have to be rewritten. Algorithmic kas-USD is refused.

## 5. Wallets

Inject (this origin):

- Kasware — `requestAccounts()`
- Kastle — `connect()` + `getAccount()`

Open:

- Ledger → https://kasvault.io (not Ledger Live)

Everyone else: install/open their app. See `/wallets` on any site. **Log out** calls `disconnect` when the provider has it, then clears this page’s session.

## 6. What we will not do

- UST-like rebase “backed by covenants”
- Pretend L2 USDC is L1
- Clone KaChat E2E or Kassword
- Wire AgenC (Solana) into Kaspa settlement
- Ask for seeds. Feedback that looks like a mnemonic is rejected.

## 7. Files that are not in git

- `*.exe` binaries (build them)
- `Documents\kaspa\feedback\` (your notes, this PC only)
- Telegram AgenC export, videos, mix work under `Documents\kaspa\`
