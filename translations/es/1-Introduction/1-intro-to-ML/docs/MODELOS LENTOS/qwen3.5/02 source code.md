Enlista todos los lenguajes de programación de los que eres capaz de generar código fuente, hacer refactoring, bug fixing, así como si eres capaz de interactuar con agentes como opencode, representalo en una tabla posteriormente explica el nivel de cada habilidad

# Capacidades de Programación de Qwen3.5

## 📊 Tabla de Lenguajes de Programación Soportados

| Lenguaje              | Generación de Código | Refactoring | Bug Fixing  | Nivel de Dominio | Agentes/Tools (OpenCode) |
| --------------------- | :------------------: | :---------: | :---------: | :--------------: | :----------------------: |
| Python                |     ✅ Excelente      | ✅ Excelente | ✅ Excelente |      ⭐⭐⭐⭐⭐       |     ✅ Soporte Total      |
| JavaScript/TypeScript |     ✅ Excelente      | ✅ Excelente | ✅ Excelente |      ⭐⭐⭐⭐⭐       |     ✅ Soporte Total      |
| Java                  |       ✅ Bueno        |   ✅ Bueno   |   ✅ Bueno   |      ⭐⭐⭐⭐☆       |    ✅ Soporte Parcial     |
| C/C++                 |    ✅ Medio-Bueno     |   ✅ Medio   |   ✅ Medio   |      ⭐⭐⭐☆☆       |     ✅ Soporte Básico     |
| Go (Golang)           |       ✅ Bueno        |   ✅ Bueno   |   ✅ Bueno   |      ⭐⭐⭐⭐☆       |     ✅ Soporte Básico     |
| Rust                  |       ✅ Bueno*       |  ✅ Básico*  |  ✅ Básico*  |      ⭐⭐⭐☆☆       |    ✅ Soporte Limitado    |
| SQL/NoSQL             |     ✅ Excelente      | ✅ Excelente | ✅ Excelente |      ⭐⭐⭐⭐☆       |     ✅ Soporte Total      |
| Shell/Bash            |       ✅ Bueno        |   ✅ Bueno   |   ✅ Bueno   |      ⭐⭐⭐⭐☆       |     ✅ Soporte Total      |
| HTML/CSS              |     ✅ Excelente      | ✅ Excelente | ✅ Excelente |      ⭐⭐⭐⭐⭐       |     ✅ Soporte Total      |
| Ruby                  |       ✅ Bueno        |  ✅ Básico   |   ✅ Medio   |      ⭐⭐⭐☆☆       |    ✅ Soporte Parcial     |
| PHP                   |       ✅ Bueno        |   ✅ Medio   |   ✅ Medio   |      ⭐⭐⭐☆☆       |    ✅ Soporte Parcial     |
| Swift                 |       ✅ Medio*       |  ✅ Básico*  |  ✅ Básico*  |      ⭐⭐⭐☆☆       |    ✅ Soporte Limitado    |
| Kotlin                |       ✅ Bueno        |  ✅ Básico   |   ✅ Medio   |      ⭐⭐⭐☆☆       |    ✅ Soporte Parcial     |
| R (Data)              |       ✅ Bueno        |  ✅ Básico   |  ✅ Básico   |      ⭐⭐⭐☆☆       |    ✅ Soporte Parcial     |
| Matlab                |      ✅ Básico*       | ❌ Limitado  | ❌ Limitado  |      ⭐⭐☆☆☆       |     ❌ No Disponible      |
| Scala                 |       ✅ Medio*       |  ✅ Básico*  |  ✅ Básico*  |      ⭐⭐☆☆☆       |    ✅ Soporte Limitado    |
| Racket/Scheme/Lisp    |      ✅ Básico*       | ❌ Limitado  | ❌ Limitado  |      ⭐⭐☆☆☆       |     ❌ No Disponible      |

> ⚠️ *Las marcas asterisco (*) indican capacidades con limitaciones conocidas o soporte en desarrollo.*

## 🔧 Nivel de Capacidad Explicado

### 1. Generación de Código

- Excelente (Python, JS/TS, SQL, HTML/CSS): Puedo escribir código limpio, optimizado y modular desde cero.
- Bueno/Medio: Funciona bien con patrones conocidos, pero puede necesitar revisión en casos complejos.
- Limitado: Requiere verificación manual o ajuste en lenguajes menos comunes.

### 2. Refactoring de Código

- Soporte Total (JS/TS, Python): Puedo reestructurar código manteniendo funcionalidad, optimizar y mejorar arquitectura.
- Parcial: Depende del lenguaje; algunos requieren análisis previo o refactorización paso a paso.

### 3. Bug Fixing y Depuración

- Excelente: Identifico errores lógicos, syntax errors, memoria leaks y propongo correcciones verificadas.
- Medio-Limitado: Puede requerir contexto adicional o pruebas en el entorno local.

### 4. Interacción con Agentes (OpenCode)

- Soporte Total: Puedo integrar herramientas, ejecutar código en entorno sandbox, usar APIs externas y automatizar tareas con agentes como Code Interpreter, OpenCode, etc.
- Soporte Parcial/Limitado: Requiere configuración previa o acceso a endpoints específicos del desarrollador/entorno.

------

## 🧩 Agentes Soportados y Capacidades

| Agente/Integración                | Estado            | Descripción                                                  |
| --------------------------------- | ----------------- | ------------------------------------------------------------ |
| OpenCode / Code Interpreter       | ✅ Disponible      | Ejecución interactiva de código, visualización de datos, debugging en entorno virtual. |
| APIs Externas (REST, GraphQL)     | ✅ Soporte Parcial | Puedo generar código para interactuar con endpoints, pero necesito configuración previa. |
| CI/CD Pipelines                   | ⚠️ Límite          | Puedo generar scripts de deployment (Jenkins, GitHub Actions), pero no ejecuto directamente en entornos CI. |
| Herramientas de Contenedorización | ✅ Soporte Básico  | Puedo generar Dockerfiles, K8s manifests, y configuraciones asociadas. |

------

## 💡 Recomendaciones Prácticas

1. Para producción: Verifica siempre el código generado en un entorno seguro antes de usarlo.
2. Lenguajes especializados: Usa lenguajes con soporte nativo mayor para tareas críticas (Python/JS).
3. Integración con agentes: Asegúrate de que las herramientas estén habilitadas según la configuración del servicio o entorno donde usas Qwen3.5.
4. Depuración: Proporciona el contexto completo para análisis más precisos (archivos, errores, dependencias).

------

¿Hay algún lenguaje o tarea específica en la que desees asistencia? 🚀