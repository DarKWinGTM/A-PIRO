# A-PIRO: Automatic Prompt Intent Recognition Optimization (V5.5)

<!-- Badges -->
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/DarKWinGTM/A-PIRO.svg?style=social&label=Star)](https://github.com/DarKWinGTM/A-PIRO)
[![Version](https://img.shields.io/badge/version-5.5-blue.svg)](CHANGELOG.md)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-green.svg)]()

## 🎯 What is A-PIRO?

**A-PIRO (Automatic Prompt Intent Recognition Optimization)** is an industry-standard **Prompt Engineering Engine** designed to transform raw, vague user inputs into high-fidelity, mission-critical System Prompts.

Unlike standard "prompt improvers," A-PIRO uses a rigourous **V5.5 Hybrid Architecture** combining:
*   **Dual-Gradient Analysis**: Optimizing for both fixes (negative gradient) and feature reinforcement (positive gradient).
*   **Evidence-Based Research**: Real-time web validation of stacks and libraries (prevents hallucinations).
*   **Beam Search Simulation**: Mentally simulating multiple architectural candidates before selection.
*   **Mockup Prevention Guard**: A 4-layer defense system against fake APIs, "todo" placeholders, and unrealistic guarantees.

## ✨ Key Features (V5.5)

- **🛡️ Role-Based Firewalls**: Automatically detects and blocks requests for "implementation code" (Builder stance), forcing an "Architect stance" (Prompt Design) instead.
- **🔍 Evidence-Based Research**: Dynamic verification of libraries and versions using `WebSearch` (max 30s) to ensure prompts are grounded in current reality.
- **🧬 Evolutionary Validation**: A self-correcting validation loop that scores prompts on Compliance vs. Quality and mutates them until they reach >9.5/10.
- **📝 Sidecar Protocol**: Generates a separate `*.apo_log.md` file detailing the *reasoning* behind every optimization decision.
- **⚓ Context Anchoring**: Enforces specific references to user-provided files (Context Injection) to prevent generic responses.

## 🏗️ Execution Pipeline

A-PIRO follows a strict algorithmic workflow:

1.  **Input Analysis**: Intent classification & Evidence-based research.
2.  **Gradient Calculation**: Root Cause Analysis (Fixes) + Success Factor Analysis (Preserve).
3.  **Pitfall Prediction**: Identifying domain-specific anti-patterns (e.g., "Div Soup" in HTML).
4.  **Beam Search**: Simulating "Strict" vs "Creative" strategies.
5.  **Validation Loop**: Iterative scoring and refinement.
6.  **Content Synthesis**: Injecting Anti-Drift Anchors and Constitutional Safeguards.
7.  **Output Generation**: Delivering the `System Prompt` and `Process Log`.

## 🚀 Quick Start

### Prerequisites
- Claude Code (CLI)
- Access to `Task` tool capabilities

### Installation

1.  **Clone the Repository**:
    ```bash
    git clone https://github.com/DarKWinGTM/A-PIRO.git
    cd A-PIRO
    ```

2.  **Install the Agent**:
    ```bash
    # Copy the agent definition to your local Claude Code agents directory
    cp prompt-optimizer.md ~/.claude/agents/
    ```

### Usage

**Option 1: Direct Task Invocation**
Use the `Task` tool to invoke the agent directly on a specific request.

```bash
Task(subagent_type="prompt-optimizer", prompt="Create a secure FastAPI backend for e-commerce")
```

**Option 2: Chat-based Interaction**
If installed as a main agent:

```text
@prompt-optimizer Create a rigorous system prompt for a Python Data Science Expert
```

## 📦 Output Artifacts

For every run, A-PIRO generates two files:

1.  **`{filename}.md`**: The optimized **System Prompt** (The final product).
2.  **`{filename}.apo_log.md`**: The **Process Log** (Transparency report showing gradients, scores, and decisions).

## 🔒 Safety & Constitutional Principles

A-PIRO operates under strict **Constitutional Safeguards**:

1.  **Anti-Mockup Policy**: No placeholders (`pass`, `TODO`). Real implementation only.
2.  **Zero Hallucination**: No guessing APIs. Must verify against docs.
3.  **Architect Stance**: The agent designs the *blueprint* (Prompt), it does not write the *application code* directly.

## 🤝 Contributing

We welcome contributions! Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Built with ❤️ by the A-PIRO Team**
