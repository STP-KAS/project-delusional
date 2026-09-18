> **Experimental only. Not a product.** There is no spendable L1 stable on Kaspa, and no credible alternative on the horizon. Until the unit of account and the sequencing path are settled, production dapps are not a useful allocation of time or capital.
>
> Do not use wallet integrations on this GitHub. STP remains a clown. [DISCLAIMER.md](DISCLAIMER.md)

# project delusional

Kaspa L1 experiments by **[@StppStp](https://x.com/StppStp)**.

This website never DMs you. Nobody from these sites will message you. We never ask for a seed, private key, or password.

**Not a product.** Front door: [STP-KAS/kaspa-dapps](https://github.com/STP-KAS/kaspa-dapps) · statement: [NOT-A-PRODUCT.md](https://github.com/STP-KAS/kaspa-dapps/blob/main/NOT-A-PRODUCT.md) · desk prompt: [DESK-PROMPT.md](https://github.com/STP-KAS/kaspa-master-file/blob/main/DESK-PROMPT.md).

Why: A GitHub link that says it shipped is a proposal, a branch, a release, or an activation — until you open it. A node release is not wallet support. This desk does not ship wallet integrations.

There is no spendable L1 stable, and no credible alternative on the horizon. KIP-21 is a consensus primitive, not a settled app-sequencing product. Until those two are settled, building real working dapps on Kaspa is not a useful spend of time or capital. This stack stays research / public goods: names, grams as a work meter, a till that quotes a reserved unit and settles KAS.

## What this is

**project delusional.** Ideas and principles. Names, agents, and fees on Kaspa L1, without faking a dollar and without an L2. One principle: skip centralised stablecoins. Still a delusional idea. Still not a product.

| Site | Repo | What you see |
| --- | --- | --- |
| http://localhost:8080 | [kns](https://github.com/STP-KAS/kns) | `.kas` names from the live KNS indexer. Agent cards, MCP, Kaspa HTTP 402. Pay with QR / `kaspa:` URI / paste txid. |
| http://localhost:8081 | [gramlane](https://github.com/STP-KAS/gramlane) | Sequenced **jobs billed in grams** (Work Credits). Not a stablecoin. |
| http://localhost:8082 | [kaspa-till](https://github.com/STP-KAS/kaspa-till) | Shop priced in reserved **kUSD** (not live). Pay KAS today. |

Bring all three up (Windows):

```powershell
powershell -File C:\Users\<user>\Documents\kaspa\start-local.ps1
```

If the browser says “localhost refused to connect”, those `.exe` processes are not running. Run the script again. Do not close the minimized console windows.

## How the three fit

```
human / agent
    |
    v
KNS (:8080)  -- resolve .kas, pay URI, agent card, 402
    |
    |-- Gramlane (:8081)  -- fees in GRAM (1 credit = 1 KIP-21 gram). Meter, not a sequencer product.
    +-- Kaspa Till (:8082) -- goods in reserved kUSD; KAS settlement until an L1 stable exists
```

- **KNS** is identity and discovery (live indexer today).
- **Gramlane** is the cheap work meter: skip USDC-for-dApps. Fill is not a business (this desk keeps 0). Any Kaspa wallet via QR / `kaspa:` URI / paste txid. **No in-page inject from this desk.** The jar is this host’s book unless you run your own (`/host`). Still project delusional.
- **Kaspa Till** is the shop that waits for a **native Kaspa L1 stable**. It does not invent `$1`.

## What is true / not true

| Claim | Status |
| --- | --- |
| `.kas` unique on L1 | **No.** Indexer first-come, first-served. |
| Work Credits = USDC | **No.** Prepaid grams. No oracle, no reserve. |
| kUSD is live | **No.** Reserved unit of account. Merchant rate is a sign on the counter. |
| Covenants mint dollars | **No.** Scripts conserve state. |
| L2 / Igra / bridged USDC | **Out of scope.** This stack stays L1. |
| Production dapps on this stack | **No.** Not a product. Stables missing. Sequencing unsettled. |
| Kasware / Kastle inject from this desk | **Withdrawn 17 Sep 2026.** [wallet-integration](https://github.com/STP-KAS/wallet-integration) throws on load. |
| This site DMs you | **Never.** |
| Foreign `readInputState` is safe on v1.0.0 | **No.** [silverscript#234](https://github.com/kaspanet/silverscript/pull/234) closed unmerged. |
| silverc master is the pin | **No.** Pin is [v1.0.0](https://github.com/kaspanet/silverscript/releases/tag/v1.0.0) (`3ed9733`). |

Kaspa master file: [STP-KAS/kaspa-master-file](https://github.com/STP-KAS/kaspa-master-file).

Last encyclopedia catch-up: **18 Sep 2026** ([abd66dc](https://github.com/STP-KAS/kaspa-master-file/commit/abd66dc)) — DAGKnight / Argent / SilverScript / KCC. Pins hold.

## Pay path

QR / `kaspa:` URI / paste txid. Never a seed. This desk does not ship wallet integrations.

## Safety & feedback

- Safety: http://localhost:8080/safety (same text on :8081 and :8082)
- Feedback tab stores JSON on **this PC only**
- Seeds / private keys in the form are rejected.

## Licence / not official

Not the official KNS team, not Kaspa core, not financial advice. Local experiments on live indexer data. Not a product.
