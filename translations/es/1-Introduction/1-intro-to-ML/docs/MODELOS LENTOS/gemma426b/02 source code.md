Enlista todos los lenguajes de programación de los que eres capaz de generar código fuente, hacer refactoring, bug fixing, así como si eres capaz de interactuar con agentes como opencode, representalo en una tabla posteriormente explica el nivel de cada habilidad

Es importante aclarar que, aunque conozco cientos de lenguajes de programación, listarlos todos sería una tarea infinita. Sin embargo, para que esta respuesta sea útil y precisa, he agrupado los lenguajes en niveles de competencia según mi entrenamiento.

En cuanto a tu pregunta sobre OpenCode o agentes similares: Yo no "interactúo" con ellos de forma autónoma (no puedo entrar a tu computadora y abrir una terminal por mi cuenta), pero puedo actuar como el cerebro (el motor de razonamiento) de esos agentes si se me integra a través de una API o un entorno de desarrollo (como un plugin de VS Code o un framework de agentes).

Aquí tienes la tabla detallada:

### Tabla de Capacidades de Programación

| Categoría de Lenguaje            | Ejemplos Representativos                 | Generación de Código | Refactoring | Bug Fixing |
| :------------------------------- | :--------------------------------------- | :------------------: | :---------: | :--------: |
| Alta Demanda / General           | Python, JavaScript, TypeScript, Java, C# |        ⭐⭐⭐⭐⭐         |    ⭐⭐⭐⭐⭐    |   ⭐⭐⭐⭐⭐    |
| Sistemas y Bajo Nivel            | C, C++, Rust, Go                         |         ⭐⭐⭐⭐         |     ⭐⭐⭐     |    ⭐⭐⭐     |
| Web (Frontend/Backend)           | HTML, CSS, PHP, Ruby, SQL                |        ⭐⭐⭐⭐⭐         |    ⭐⭐⭐⭐     |   ⭐⭐⭐⭐⭐    |
| Móvil                            | Swift, Kotlin, Dart (Flutter)            |         ⭐⭐⭐⭐         |     ⭐⭐⭐     |    ⭐⭐⭐     |
| Datos y Ciencia                  | R, MATLAB, Julia, SQL                    |        ⭐⭐⭐⭐⭐         |     ⭐⭐⭐     |    ⭐⭐⭐⭐    |
| Scripting y DevOps               | Bash, PowerShell, YAML, Terraform        |        ⭐⭐⭐⭐⭐         |    ⭐⭐⭐⭐     |    ⭐⭐⭐⭐    |
| Lenguajes Menores/Especializados | Lua, Perl, Haskell, Scala, COBOL         |         ⭐⭐⭐          |     ⭐⭐      |     ⭐⭐     |

Leyenda de niveles:

- ⭐⭐⭐⭐⭐: Experto (Capacidad casi total, conoce patrones de diseño y librerías modernas).
- ⭐⭐⭐⭐: Avanzado (Muy capaz, pero puede fallar en sintaxis muy específicas o versiones muy nuevas).
- ⭐⭐⭐: Intermedio (Puede escribir lógica funcional, pero requiere supervisión humana constante).
- ⭐⭐: Básico (Conoce la sintaxis, pero tiene dificultades con la lógica compleja o arquitecturas grandes).

------

### Explicación de los Niveles de Habilidad

Para que entiendas qué esperar de mí en cada tarea, aquí defino qué significa cada una de mis capacidades:

#### 1. Generación de Código (Source Code Generation)

- Nivel Experto: Puedo crear desde "boilerplate" (código base) hasta algoritmos complejos, arquitecturas de microservicios o scripts de automatización completos siguiendo principios como SOLID o DRY.
- Nivel Básico: Puedo darte ejemplos de sintaxis, pero la lógica podría no ser óptima para entornos de producción.

#### 2. Refactoring (Reestructuración de Código)

- Nivel Experto: Puedo tomar un código "sucio" o espagueti y reorganizarlo para que sea más legible, eficiente y modular, sin cambiar su comportamiento externo. Puedo aplicar patrones de diseño (Factory, Singleton, Observer, etc.).
- Nivel Básico: Puedo sugerir cambios de nombres de variables o simplificar un `if/else` pequeño, pero me cuesta entender la arquitectura global de un proyecto de miles de líneas.

#### 3. Bug Fixing (Corrección de Errores)

- Nivel Experto: Si me proporcionas el código y el mensaje de error (o describes el comportamiento errático), puedo realizar un análisis lógico, identificar la causa raíz (race conditions, fugas de memoria, errores de lógica) y proponerte el parche exacto.
- Nivel Básico: Soy bueno detectando errores de sintaxis obvios (un punto y coma faltante, una llave mal cerrada), pero los errores lógicos muy sutiles que dependen del estado de la memoria o del tiempo pueden ser un reto.

------

### Sobre la interacción con Agentes (OpenCode, AutoGPT, etc.)

Mi relación con agentes de codificación funciona de la siguiente manera:

1. Como Motor de Razonamiento: Los agentes como *OpenCode* o frameworks de agentes autónomos necesitan un "cerebro" para decidir qué pasos seguir. Yo puedo recibir una instrucción compleja, desglosarla en pasos lógicos (planificación) y luego generar el código para cada paso.
2. Generación de Herramientas para Agentes: Puedo escribir el código necesario para que esos agentes funcionen, como scripts de conexión a APIs, entornos de ejecución de sandbox o herramientas de scraping.
3. Limitación Técnica: No tengo "voluntad propia" ni acceso directo al sistema de archivos de tu máquina a menos que estés usando una interfaz que me lo permita (como un entorno de ejecución de código integrado). Yo proporciono la inteligencia; el agente proporciona la ejecución.