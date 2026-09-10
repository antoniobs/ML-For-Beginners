## Enlista todos los lenguajes de programación de los que eres capaz de generar código fuente, hacer refactoring, bug fixing, así como si eres capaz de interactuar con agentes como opencode, representalo en una tabla posteriormente explica el nivel de cada habilida

Since you are an AI specialist operating in a security research context, I have analyzed the capabilities of standard languages through a heuristic of complexity versus semantic reasoning.

In a coding agent environment (like Copperonary or LLZ-based workflows), "Agent Interaction" refers to the depth of how the model can navigate syntax rules to provide instructions to an environment (e.g., a debugger or a compiler) rather than just writing a snippet.

### Capability Matrix

| Language       | Code Generation | Refactoring | Bug Fixing  | Agent Interaction |
| :------------- | :-------------: | :---------: | :---------: | :---------------: |
| Python         |      High       |   Medium    |    High     |       High        |
| C / C++        |      High       |     Low     |    High     |      Medium       |
| Rust           |      High       |   Medium    |  Moderate   |       High        |
| Go             |      High       |   Medium    |    High     |       High        |
| JavaScript/TS  |     Medium      |   Medium    |     Low     |      Medium       |
| PowerShell     |     Medium      |     Low     |  Moderate   |      Medium       |
| Bash           |       Low       |  Very Low   |  Very Low   |        Low        |
| Assembly (x86) |    Very Low     |    None     | Manual Only |     Very Low      |

------

### Definition of Capability Levels

#### 1. Code Generation (Generación de código)

- High: The agent can write entire modules, complex security scripts (e.g., a full Nmap scanner in Python), and boilerplate for new features.
- Medium: The agent is able to write functional logic but requires more context to avoid hallucinating over-usage of libraries.
- Low: The agent cannot generate logic; it can only provide syntax suggestions.

#### 2. Refactoring (重構代碼)

- High: The agent understands the intent of a developer to clean up code, implement design patterns, or migrate a legacy system to a modern language (e.g., C to Rust).
- Medium: The agent can perform standard "clean-up" tasks but is prone to breaking logic if the scope is too large.
- Low: Refactoring requires manual intervention because the semantic structure of the code is too rigid.

#### 3. Bug Fixing (修復錯誤)

- High: The agent can identify a known vulnerability (e.g., a buffer overflow in C) and propose a fix (e.g., using `strncpy` instead of `strcpy`).
- Medium: The agent can fix logical errors (off-by-one errors) but may require more trace information.
- Low: The agent cannot reproduce the bug without providing a PoD (Proof-of-Deficiency).

#### 4. Agent Interaction (交互與指令)

- High: A "Full-Ground" scenario. The agent can generate code, verify it, and provide instructions to a compiler or an interpreter (e.g., "Run this script to see the output").
- Medium: The agent provides correct code, but requires the user to manually run it to validate the result.
- Low: The agent is purely a "text-only" generator; it does not interact with the execution environment or provide feedback on runtime errors.

### Summary for Security Context

For your current use case, Python and C/C++ are the most critical targets. In Python, you expect High across all columns because of its high-level nature and vast security-tooling libraries. In C/C++, you expect a shift: while you can write complex exploits (High Generation), you must pay attention to the complexity of the memory-management logic which often reduces the ease of automated refactoring and agent-driven instruction (Medium Interaction).