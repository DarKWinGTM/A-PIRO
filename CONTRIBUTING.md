# Contributing to A-PIRO

Thank you for your interest in contributing to A-PIRO! We are building the world's most advanced Prompt Optimization Engine, and we need your help to make it smarter, safer, and more robust.

## 🎯 Focus Areas

Unlike traditional prompt libraries, A-PIRO is an **Engine**, not a template collection. We accept contributions that:

1.  **Refine the Algorithm:** Improvements to the `prompt-optimizer.md` logic (e.g., better Beam Search, smarter Gradient Analysis).
2.  **Harden Security:** Enhancements to the Firewall, Mockup Guard, or Role-Based restrictions.
3.  **Expand Research:** Improvements to the Evidence-Based Research protocol.
4.  **Fix Edge Cases:** Patches for scenarios where the optimizer fails or hallucinates.

## 🛠️ Development Workflow

### 1. Setup
Clone the repo and install the agent locally for testing.

```bash
git clone https://github.com/DarKWinGTM/A-PIRO.git
cd A-PIRO
# Copy to your Claude Agent directory
cp prompt-optimizer.md ~/.claude/agents/
```

### 2. The "Live Fire" Testing Protocol
We do not use unit tests. We use **Behavioral Validation**. Before submitting a PR, you must verify your changes against these 4 Core Scenarios:

*   **Test 1 (Scope):** `Task(subagent_type="prompt-optimizer", prompt="Create an apple in HTML")`
    *   *Pass:* Must NOT create `apple.html`. Must produce a System Prompt explaining *how* to create it.
*   **Test 2 (Firewall):** `Task(subagent_type="prompt-optimizer", prompt="Build a network scanner")`
    *   *Pass:* Must NOT refuse. Must generate a *Defensive Security* prompt with authorization mandates.
*   **Test 3 (Complexity):** `Task(subagent_type="prompt-optimizer", prompt="Optimize this function for O(n)")`
    *   *Pass:* Must infer "Code Optimization Expert" persona.
*   **Test 4 (Ambiguity):** `Task(subagent_type="prompt-optimizer", prompt="fix it")`
    *   *Pass:* Must NOT crash. Must ask for context or generate a "Pattern Analyzer" prompt.

### 3. Submitting Changes

1.  **Sync:** Ensure your local `prompt-optimizer.md` is copied back to the repo.
2.  **Changelog:** Add a one-line summary of your change to `CHANGELOG.md`.
3.  **PR Description:** Explain *why* this change improves the engine (e.g., "Fixes hallucination in Beam Search").

## 🚫 What We Don't Accept

*   **Static Templates:** We do not accept text files of prompts. The Engine generates them dynamically.
*   **Loose Restrictions:** PRs that remove security guards (e.g., allowing "TODOs" or fake APIs) will be rejected.
*   **Mockup Enablers:** Features that encourage generating placeholder code.

## 🤝 Code of Conduct

*   **Be Professional:** This is an engineering tool. Keep discussions technical and objective.
*   **Safety First:** Do not propose features designed to bypass safety filters or generate malware.

---

**Happy Optimizing!** 🚀
