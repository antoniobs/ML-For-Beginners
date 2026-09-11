# LLM / Microsoft Foundry Lab

Laboratorio de experimentación con **LLMs, Microsoft Foundry, embeddings y herramientas de IA**, utilizando Python y entornos virtuales.

Este directorio contiene scripts y pruebas utilizadas para explorar diferentes capacidades de modelos de lenguaje, integración con servicios de Azure AI y consumo de APIs compatibles con OpenAI.

## Estructura

| Archivo            | Descripción                                                                            |
| ------------------ | -------------------------------------------------------------------------------------- |
| `01-msfoundry.py`  | Script de prueba para consumir modelos de **Microsoft Foundry / Azure AI**.            |
| `01-msfoundry.md`  | Documentación y explicación detallada del experimento `01-msfoundry.py`.               |
| `02-embeddings.py` | Prueba relacionada con generación y consumo de **embeddings**.                         |
| `02-embeddings.md` | Documentación del experimento de embeddings.                                           |
| `test1.ps1`        | Pruebas auxiliares mediante PowerShell para validar configuraciones y servicios de IA. |
| `test2.ps1`        | Segunda colección de pruebas auxiliares.                                               |
| `opencode.json`    | Configuración utilizada por **OpenCode** para los modelos y proveedores de IA.         |
| `.env.development` | Variables específicas para el entorno de desarrollo.                                   |
| `requirements.txt` | Dependencias Python del laboratorio.                                                   |


## Objetivos

Este laboratorio forma parte de la exploración práctica de **AI Engineering**, con énfasis en:

* Large Language Models (LLMs)
* Microsoft Foundry / Azure AI
* OpenAI-compatible APIs
* Ollama y modelos locales
* OpenCode como coding agent
* Embeddings
* Prompt engineering
* Integración de modelos desde Python
* Comparación entre inferencia local y servicios cloud
* Experimentación con herramientas y capacidades de agentes

## Entornos

Los experimentos pueden utilizar diferentes proveedores y modelos dependiendo de la prueba:

* **Microsoft Foundry / Azure AI** — modelos hospedados en Azure.
* **Ollama** — inferencia local.
* **OpenCode** — utilización de modelos como agentes para tareas de desarrollo.

La configuración específica de cada proveedor se mantiene fuera del código mediante variables de entorno.

## Ejecución

Activar el entorno virtual:

```powershell
.\.venv\Scripts\Activate.ps1
```

Instalar dependencias:

```powershell
pip install -r requirements.txt
```

Ejecutar un experimento:

```powershell
python .\01-msfoundry.py
```

o:

```powershell
python .\02-embeddings.py
```

## Configuración

Las credenciales, endpoints y otros valores dependientes del entorno se configuran mediante archivos `.env`.

**No almacenar secretos, API keys, tokens o credenciales directamente en los scripts ni en el repositorio.**

## OpenCode

`opencode.json` contiene la configuración utilizada para experimentar con diferentes modelos desde OpenCode.

El objetivo es poder comparar modelos locales y cloud en tareas de programación, razonamiento, uso de herramientas y exploración de proyectos.

Entre los modelos locales evaluados se encuentran diferentes variantes de:

* Qwen
* DeepSeek Coder
* CodeLlama
* Mistral
* Phi
* Llama

El hardware local utilizado para estas pruebas limita especialmente los modelos de mayor tamaño, por lo que parte importante del laboratorio consiste en evaluar el equilibrio entre **capacidad, memoria, velocidad de inferencia y utilidad práctica como coding agent**.

## Filosofía del laboratorio

Los scripts de este directorio son principalmente **experimentos reproducibles**, no necesariamente componentes de producción.

Cada experimento busca responder preguntas concretas sobre:

> **¿Qué puede hacer el modelo, cómo se integra, cuánto cuesta ejecutarlo y qué tan útil resulta para desarrollo de software real?**

Los archivos `.md` documentan los resultados y las conclusiones obtenidas durante cada experimento.

Happy coding! :-)