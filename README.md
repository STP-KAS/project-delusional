# project delusional

Kaspa L1 apps by **[@StppStp](https://x.com/StppStp)**.

This website never DMs you. Nobody from these sites will message you. We never ask for a seed, private key, or password.

## What this is

Three localhost websites that share one idea: **names, agents, and fees on Kaspa L1** — without faking a dollar and without an L2.

| Site | Repo | Run | What you see |
| --- | --- | --- | --- |
| http://localhost:8080 | [kns](https://github.com/STP-KAS/kns) | `C:\Users\Remco\kns\kns.exe` | `.kas` names from the live KNS indexer. Agent cards, MCP, Kaspa HTTP 402, wallets. |
| http://localhost:8081 | [gramlane](https://github.com/STP-KAS/gramlane) | `Documents\kaspa\superapp\gramlane.exe` | Sequenced **jobs billed in grams** (Work Credits). Not a stablecoin. |
| http://localhost:8082 | [kaspa-till](https://github.com/STP-KAS/kaspa-till) | `Documents\kaspa\superappstablesalternative\kastill.exe` | Shop priced in reserved **kUSD** (not live). Pay KAS today. |

Bring all three up (Windows):

```powershell
powershell -File C:\Users\Remco\Documents\kaspa\start-local.ps1
```

If the browser says “localhost refused to connect”, those `.exe` processes are not running. Run the script again. Do not close the minimized console windows.

## How the three fit

```
human / agent
    │
    ▼
KNS (:8080)  ── resolve .kas, pay URI, agent card, 402
    │
    ├── Gramlane (:8081)  ── dApp fees in GRAM (1 credit = 1 KIP-21 gram)
    └── Kaspa Till (:8082) ── goods in reserved kUSD; KAS settlement until an L1 stable exists
```

- **KNS** is identity and discovery (live indexer today).
- **Gramlane** is the honest *stable-shaped fee* that covenants can actually back: **work**, not USD.
- **Kaspa Till** is the shop that waits for a **native Kaspa L1 stable**. It does not invent `$1`.

## What is true / not true

| Claim | Status |
| --- | --- |
| `.kas` unique on L1 | **No.** Indexer first-come, first-served. |
| Work Credits = USDC | **No.** Prepaid grams. No oracle, no reserve. |
| kUSD is live | **No.** Reserved unit of account. Merchant rate is a sign on the counter. |
| Covenants mint dollars | **No.** Scripts conserve state. |
| L2 / Igra / bridged USDC | **Out of scope.** This stack stays L1. |
| AgenC / Tetsuo | Looked at ([agenc.ag](https://agenc.ag)). Solana marketplace. **Not integrated.** |
| Kasware / Kastle inject | **Yes.** `window.kasware` / `window.kastle`. Ledger via [KasVault](https://kasvault.io). |
| This site DMs you | **Never.** |

Full claims table lives in the running KNS app: http://localhost:8080/honest

## Wallets

Connect on any of the three sites. **Log out** drops this page’s session.

Only two wallets inject a Kaspa L1 provider here: **Kasware** and **Kastle**. Ledger signs in KasVault (or Kastle). Tangem, OneKey, ELLIPAL, SafePal, Kaspium, Kurncy, KasKeeper, Zelcore, OKX, NOW, Guarda, Bitget, MathWallet are cataloged with official links — we do not fake a connect.

## Safety & feedback

- Safety: http://localhost:8080/safety (same text on :8081 and :8082)
- Feedback tab stores JSON on **this PC only**: `C:\Users\Remco\Documents\kaspa\feedback\<app>\`
- Seeds / private keys in the form are rejected.

## Build from source

Need Go 1.22+.

```powershell
cd C:\Users\Remco\kns
go test ./...
go build -o kns.exe ./cmd/kns

cd C:\Users\Remco\Documents\kaspa\superapp
go test ./...
go build -o gramlane.exe ./cmd/gramlane

cd C:\Users\Remco\Documents\kaspa\superappstablesalternative
go test ./...
go build -o kastill.exe ./cmd/kastill
```

Silverscript artifacts were compiled with official `silverc` v1-rc1 (kaspanet / @OriNewman). RC is an RC.

## Docs inside the dApp repos

Gramlane folder also holds the stack map:

- [VISION.md](https://github.com/STP-KAS/gramlane/blob/main/VISION.md)
- [DIFF-MAP.md](https://github.com/STP-KAS/gramlane/blob/main/DIFF-MAP.md)
- [HOW-IT-WORKS.md](https://github.com/STP-KAS/gramlane/blob/main/HOW-IT-WORKS.md)
- [WORK-CREDITS.md](https://github.com/STP-KAS/gramlane/blob/main/WORK-CREDITS.md)
- [GUIDE.md](https://github.com/STP-KAS/gramlane/blob/main/GUIDE.md)

Till vision: [VISION.md](https://github.com/STP-KAS/kaspa-till/blob/main/VISION.md)

## Licence / not official

Not the official KNS team, not Kaspa core, not financial advice. Local experiments on live indexer data.
