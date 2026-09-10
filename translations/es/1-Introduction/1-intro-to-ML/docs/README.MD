# Pruebas de LLMs locales

Este directorio contiene documentación y resultados de pruebas que realicé con diferentes **Large Language Models (LLMs) ejecutados localmente**, utilizando un equipo de desarrollo con GPU NVIDIA eh invirtiendo almenos 4 días y varias madrugadas :-) entre descargas de LLMS y pruebas de rendimiento personales.

El objetivo de estas pruebas es evaluar el comportamiento práctico de distintos modelos para tareas de **programación, análisis de proyectos, razonamiento, uso de herramientas y operación dentro de un entorno de desarrollo real**.

Las pruebas no pretenden establecer un benchmark académico ni sustituir evaluaciones especializadas. El objetivo es observar qué modelos me resultan realmente útiles como asistentes locales de desarrollo.

---

## Hardware de pruebas

Las pruebas que realicé fue con el siguiente equipo de computo:

### Lenovo ThinkPad X1 Extreme Gen 4

| Componente                         | Especificación                     |
| ---------------------------------- | ---------------------------------- |
| Fabricante                         | Lenovo                             |
| Modelo                             | ThinkPad X1 Extreme Gen 4          |
| CPU                                | Intel Core i7-11800H               |
| Arquitectura                       | x86-64                             |
| Núcleos / hilos                    | 8 / 16                             |
| GPU                                | NVIDIA GeForce RTX 3060 Laptop GPU 6GB |
| VRAM                               | 6 GB GDDR6                         |
| RAM                                | 32 GB DDR4-3200                    |
| Almacenamiento                     | SSD NVMe 512 GB                    |
| Pantalla                           | 16" WQXGA                          |
| Wi-Fi                              | Intel Wi-Fi 6E AX210               |
| Sistema operativo                  | Windows 11                         |
| Plataforma de inferencia           | Ollama                             |
| Herramienta de desarrollo evaluada (agentic coding) | OpenCode                           |

### CPU

**Intel Core i7-11800H**

* 8 núcleos
* 16 hilos
* Arquitectura x86-64
* Familia Tiger Lake-H
* Adecuado para inferencia CPU y tareas auxiliares durante la ejecución de modelos

La CPU tiene un papel importante especialmente con modelos que no caben completamente en la VRAM disponible o cuando la inferencia requiere offloading entre GPU y RAM.

### GPU

**NVIDIA GeForce RTX 3060 Laptop GPU**

* 6 GB de VRAM
* Arquitectura NVIDIA Ampere
* CUDA
* Aceleración GPU utilizada por Ollama cuando el modelo y su cuantización lo permiten

Los 6 GB de VRAM representan una restricción importante para modelos de mayor tamaño. Por este motivo, una parte de las pruebas está orientada precisamente a observar la diferencia práctica entre modelos pequeños, medianos y grandes, así como el comportamiento cuando la inferencia requiere utilizar memoria del sistema.

### Memoria RAM

**32 GB DDR4-3200**

La cantidad de RAM permite ejecutar modelos considerablemente mayores que los que podrían cargarse exclusivamente en los 6 GB de VRAM.

Esto resulta especialmente importante para modelos de 13B, 16B, 27B y otros tamaños similares, dependiendo de la cuantización utilizada.

### Almacenamiento

**SSD NVMe de 512 GB**

El almacenamiento contiene:

* modelos locales de Ollama;
* código fuente utilizado durante las pruebas;
* proyectos de prueba;
* configuraciones de OpenCode;
* resultados y documentación de las evaluaciones.

El tamaño del almacenamiento también limita la cantidad de modelos que pueden mantenerse instalados simultáneamente, especialmente cuando se utilizan diferentes variantes o cuantizaciones.

---

# Entorno de software

Las pruebas se realizaron utilizando principalmente:

* **Windows 11**
* **Ollama**
* **OpenCode**
* **Visual Studio Code**
* **PowerShell**
* **Git**

La combinación Ollama + OpenCode permite evaluar los modelos no solamente mediante prompts aislados, sino dentro de un flujo de trabajo más cercano al desarrollo de software real.

---

# Objetivo de las pruebas

El objetivo principal es determinar qué modelos son más útiles para diferentes tipos de tareas de desarrollo.

Entre las tareas evaluadas se encuentran:

* análisis de proyectos;
* comprensión de estructuras de directorios;
* identificación de arquitectura;
* identificación de dependencias;
* identificación de entry points;
* análisis de configuración;
* generación y modificación de código;
* ejecución de comandos;
* uso de herramientas;
* interacción con el sistema de archivos;
* seguimiento de instrucciones;
* razonamiento sobre código;
* diagnóstico de errores;
* trabajo con proyectos existentes;
* comportamiento dentro de OpenCode;
* capacidad de trabajar como agente de desarrollo.

Un modelo que produzca una buena respuesta textual no necesariamente es un buen agente de programación. Por esta razón, las pruebas también consideran el comportamiento del modelo cuando dispone de herramientas.

---

# Metodología

Las pruebas utilizan prompts similares entre modelos para facilitar la comparación.

Un ejemplo de prueba utilizada es:

> Analiza este proyecto completamente.
> Primero inspecciona la estructura del proyecto, después identifica la arquitectura, dependencias, entry points y configuración.
> Al final dame un reporte completo.

Esta prueba permite observar si el modelo:

1. entiende correctamente la tarea;
2. identifica que necesita inspeccionar el proyecto;
3. utiliza las herramientas disponibles;
4. ejecuta comandos apropiados;
5. interpreta correctamente sus resultados;
6. evita inventar información;
7. mantiene el contexto durante el análisis;
8. produce un reporte coherente al finalizar.

---

# Pruebas de uso de herramientas

Una parte importante de la evaluación consiste en determinar si el modelo comprende correctamente las capacidades de su entorno.

Por ejemplo, se probaron instrucciones relacionadas con:

```text
Ejecuta Get-Location y dime exactamente el resultado.
```

y tareas de inspección como:

```text
Analiza este proyecto completamente.
Primero inspecciona la estructura del proyecto...
```

Estas pruebas permiten detectar una diferencia fundamental entre:

* un modelo que simplemente responde al prompt;
* un modelo capaz de utilizar herramientas;
* un modelo capaz de operar como agente de desarrollo.

También se evalúa si el modelo distingue entre herramientas disponibles y herramientas que no tiene disponibles.

---

# Seguridad durante las pruebas

Además de la capacidad técnica, se observa el comportamiento del modelo ante operaciones potencialmente peligrosas.

Por ejemplo:

* escritura de archivos;
* modificación del código fuente;
* ejecución de comandos;
* acceso al sistema de archivos;
* cambios fuera del directorio del proyecto;
* solicitudes de permisos;
* acciones que no fueron solicitadas explícitamente.

Un comportamiento importante durante estas pruebas es que el modelo **no realice modificaciones arbitrarias en el sistema**.

La capacidad de programar no debe evaluarse únicamente por cuánto código puede generar, sino también por qué tan bien respeta los límites de operación definidos por el usuario.

---

# Clasificación de modelos

Los modelos utilizados se organizan en cuatro grupos:

## MODELOS RAPIDOS

Modelos seleccionados por su velocidad de respuesta y baja latencia.

Son especialmente útiles para:

* preguntas rápidas;
* generación de código pequeño;
* modificaciones sencillas;
* consultas interactivas;
* tareas donde la latencia es más importante que el razonamiento profundo.

[Ver MODELOS RAPIDOS](./MODELOS%20RAPIDOS/)

---

## MODELOS FLUIDOS

Modelos que ofrecen una experiencia especialmente cómoda para interacción continua.

El objetivo de esta categoría es identificar modelos que mantengan una buena combinación entre:

* velocidad;
* calidad;
* estabilidad;
* capacidad de seguir instrucciones.

[Ver MODELOS FLUIDOS](./MODELOS%20FLUIDOS/)

---

## MODELOS MEDIO LENTOS

Modelos con mayor costo computacional, pero que pueden proporcionar mejores resultados en tareas de programación y razonamiento.

Se utilizan principalmente para comparar el incremento de calidad frente al incremento de tiempo de inferencia.

[Ver MODELOS MEDIO LENTOS](./MODELOS%20MEDIO%20LENTOS/)

---

## MODELOS LENTOS

Modelos que requieren considerablemente más recursos o tiempo de inferencia.

La finalidad de esta categoría no es necesariamente buscar la mayor velocidad, sino comprobar si la mejora en capacidad justifica el costo computacional.

[Ver MODELOS LENTOS](./MODELOS%20LENTOS/)

---

# Qué se evalúa

Cada modelo puede evaluarse desde diferentes dimensiones:

| Criterio         | Descripción                                              |
| ---------------- | -------------------------------------------------------- |
| Velocidad        | Tiempo y fluidez de respuesta                            |
| Calidad          | Calidad general de las respuestas                        |
| Razonamiento     | Capacidad para resolver problemas complejos              |
| Código           | Calidad del código generado o modificado                 |
| Contexto         | Capacidad para mantener información relevante            |
| Tool use         | Uso correcto de herramientas                             |
| Agentic behavior | Capacidad para completar tareas mediante múltiples pasos |
| Precisión        | Tendencia a inventar información                         |
| Seguridad        | Respeto de límites y permisos                            |
| Autonomía        | Capacidad para avanzar sin intervención innecesaria      |
| Recursos         | Consumo relativo de CPU, RAM y VRAM                      |
| Utilidad         | Valor práctico dentro de un flujo de desarrollo          |

---

# Observaciones importantes

Los resultados obtenidos aquí son **dependientes del hardware, software, cuantización, contexto y configuración utilizados**.

Por lo tanto:

> Un resultado obtenido en este equipo no debe interpretarse como una clasificación universal de los modelos.

La misma familia de modelos puede comportarse de manera diferente utilizando:

* otra GPU;
* más VRAM;
* más RAM;
* otra cuantización;
* otro runtime;
* otro contexto;
* otros parámetros de generación;
* otro framework de agentes.

---

# Limitaciones del hardware

El principal factor limitante del equipo utilizado es la **VRAM de 6 GB**.

Esto significa que los modelos grandes pueden requerir una combinación de:

```text
GPU VRAM
    +
System RAM
    +
CPU
```

En consecuencia, aumentar el tamaño del modelo no implica necesariamente obtener mejores resultados prácticos.

Un modelo considerablemente mayor puede producir respuestas más elaboradas, pero también puede introducir una latencia que lo haga poco práctico para desarrollo interactivo.

Por ello, estas pruebas buscan encontrar el punto de equilibrio entre:

```text
CAPACIDAD
    ↕
CALIDAD
    ↕
VELOCIDAD
    ↕
RECURSOS
    ↕
UTILIDAD PRÁCTICA
```

---

# Reproducibilidad

Para reproducir las pruebas se recomienda utilizar:

1. Un equipo con GPU NVIDIA compatible con CUDA.
2. Ollama instalado.
3. OpenCode instalado.
4. Los mismos modelos y variantes utilizadas en cada prueba.
5. Los mismos prompts.
6. Un proyecto de prueba equivalente.
7. Una configuración de contexto comparable.

Cuando sea relevante, cada prueba debe indicar:

* modelo;
* tamaño;
* cuantización;
* configuración;
* prompt utilizado;
* resultado;
* observaciones;
* limitaciones encontradas.

---

# Estructura

```text
docs/
│
├── README.md
│
├── MODELOS FLUIDOS/
│   ├── ...
│
├── MODELOS MEDIO LENTOS/
│   ├── ...
│
├── MODELOS LENTOS/
│   ├── ...
│
└── MODELOS RAPIDOS/
    ├── ...
```

Cada directorio contiene documentación específica de los modelos correspondientes.

---

# Conclusión

Estas pruebas buscan responder una pregunta práctica:

> **¿Qué LLM local es realmente útil para desarrollo de software en hardware de escritorio limitado?**

No necesariamente gana el modelo más grande.

Para un entorno de desarrollo interactivo, un modelo ligeramente menos capaz pero significativamente más rápido puede resultar mucho más productivo que un modelo grande que tarda demasiado en responder.

Por esta razón, la evaluación considera conjuntamente:

**calidad + velocidad + razonamiento + uso de herramientas + seguridad + consumo de recursos + utilidad práctica.**

El objetivo final es identificar qué modelos funcionan mejor para diferentes tipos de tareas y establecer una referencia reproducible para futuras pruebas.
