# foundry-nft-challenge-defi

### Cyfrin Foundry – Lesson Twelve NFT Challenge

This repo contains my solution for the Cyfrin Foundry course’s NFT challenge, [**Advanced Foundry – Section 3: DeFi / Stablecoin**](https://github.com/Cyfrin/foundry-full-course-cu?tab=readme-ov-file#advanced-foundry-section-3-foundry-defi--stablecoin-the-pinnacle-project-get-here).  
The focus is the `LessonTwelve` NFT challenge deployed on Sepolia (`0xe5760847db2f10A74Fc575B4803df5fe129811C1`, see [Etherscan](https://sepolia.etherscan.io/address/0xe5760847db2f10A74Fc575B4803df5fe129811C1#code)).

The goal is to:
- Analyze the on-chain `LessonTwelve` + `LessonTwelveHelper` logic.
- Use fuzzing in Foundry to discover a `numberr` that causes `hellFunc` to revert.
- Call `solveChallenge` with a custom exploit contract to trigger the catch branch and mint the course NFT.

### Layout

- `src/challenge/` – Original challenge contracts (`LessonTwelve`, `LessonTwelveHelper`, etc.).
- `src/solution/` – Exploit contract, helper interfaces, and constants used for the solution.
- `test/` – Invariant tests, handler-based tests, and a local fuzz test that searches for the winning `numberr`.
- `script/` – Scripts to deploy the exploit contract and to call `solveChallenge` on Sepolia once the solution is known.

### Running locally

- Run unit and fuzz tests (no RPC required):

```bash
forge test -vvvv
```

- If you want heavier fuzzing for the local search:

```bash
forge test --match-test testFuzz_findNumber --fuzz-runs 1000000 -vvvv
```

Once the correct `numberr` is found by the local fuzz test, plug it into the solution constants / script and run the broadcast script against Sepolia (with a funded account and `SEPOLIA_RPC_URL` set) to actually mint the NFT.