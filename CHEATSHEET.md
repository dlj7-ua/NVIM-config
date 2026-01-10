# 📋 NeoVim Cheatsheet

**Leader Key:** `Espacio`

---

## 🎨 Interfaz General

### Visibilidad

| Mapeo | Función |
|-------|---------|
| **Espacio + t** | Mostrar caracteres invisibles (tabulaciones, espacios, saltos de línea) |
| **Espacio + tt** | Ocultar caracteres invisibles |

### Operaciones Básicas

| Mapeo | Función |
|-------|---------|
| **Espacio + w** | Guardar archivo |
| **Espacio + q** | Cerrar archivo |
| **Espacio + Q** | Cerrar sin guardar |

---

## 📝 VimTeX (Compilación y Visualización de LaTeX)

**Descripción:** Plugin para compilación y visualización de documentos LaTeX. Usa `latemk` como compilador y `Zathura` como visor de PDF.

| Mapeo | Función |
|-------|---------|
| **Espacio + ll** | Compilar documento LaTeX |
| **Espacio + lv** | Abrir visor de PDF (Zathura) |
| **Espacio + lc** | Limpiar archivos auxiliares de compilación |
| **Espacio + lt** | Abrir tabla de contenido del documento |

---

## 🔍 Telescope (Búsqueda y Navegación)

**Descripción:** Plugin de búsqueda potente y fuzzy finder integrado con soporte para archivos, git, proyectos y más. Permite navegar rápidamente por archivos y búsquedas.

###Navegación de Archivos

| Mapeo | Función |
|-------|---------|
| **Espacio + f** | Abrir navegador de archivos ******* |
| **Espacio + fb** | Listar y navegar entre buffers abiertos |

### Búsqueda de contenido

| Mapeo | Función |
|-------|---------|
| **Espacio + fg** | Búsqueda live en archivos (live_grep) |

### Integración con Git

| Mapeo | Función |
|-------|---------|
| **Espacio + gc** | Ver commits de git |
| **Espacio + gb** | Ver y cambiar ramas de git |
| **Espacio + gs** | Ver status de git |

### Gestión de Proyectos

| Mapeo | Función |
|-------|---------|
| **Espacio + p** | Navegar entre proyectos |
| **Espacio + m** | Búsqueda de archivos multimedia |

---

## 🌳 NvimTree (Árbol de Archivos - Explorador)

**Descripción:** Explorador visual de estructura de directorios. Premite navegar, crear, eliminar y editar archivos desde una vista de árbol lateral.

| Mapeo | Función |
|-------|---------|
| **Espacio + nt** | Alternar (abrir/cerrar) el árbol de archivos |
| **Espacio + nf** | Encontrar y enfocar el archivo actual en el árbol |

---

## 🤖 Avante (AI Coding Assistant)

**Descripción:** Asistente de IA para la programación. Permite hacer preguntas sobre código y obtener sugerencias inteligentes.

| Mapeo | Función |
|-------|---------|
| **Espacio + at** | Alternar panel de Avante |
| **Espacio + ae** | Editar con Avante (modo editor asistido) |

---

## 🔧 CoC.vim (Language Server Protocol)

**Descripción:** Motor de completación de código inteligente con soporte para múltiples lenguajes (Python, Typescript, C/C++, LaTeX, SQL, Bash). Proporciona autocompletado, refactorización y navegación de código.

### Completación y Autocompletado

| Mapeo | Función |
|-------|---------|
| **Tab** | Siguiente opción en el menú de completación |
| **Shift + Tab** | Opción anterior en el menú de completación |
| **Enter** | Aceptar opción seleccionada en completación |
| **Ctrl + Espacio** | Forzar activación de completación |

### Navegación de Código

| Mapeo | Función |
|-------|---------|
| **gd** | Ir a definición |
| **gy** | Ir a type definition |
| **gi** | Ir a implementación |
| **gr** | Ver referencias |
| **K** | Mostrar documentación/hover |
| **[g** | Ir al diagnóstico anterior |
| **]g** | Ir al siguiente diagnóstico |

### Refactorización y Opciones de Código

| Mapeo | Función |
|-------|---------|
| **Espacio + rn** | Renombrar símbolo |
| **Espacio + f** | Formatear código seleccionado o línea actual ******* |
| **Espacio + a** | Acciones de código en selección (visual + normal) |
| **Espacio + ac** | Acciones de código en posición del cursor |
| **Espacio + as** | Acciones de código para todo el buffer |
| **Espacio + qf** | Aplicar quickfix (arreglo automático) |
| **Espacio + re** | Refactorización (reemplazado) |
| **Espacio + r** | Acciones de refactorización en selección (visual + normal) |
| **Espacio + cl** | Ejecutar Code Lens action |

### Objetos de Texto (Selección de Bloques)

| Mapeo | Función |
|-------|---------|
| **if** | Seleccionar dentro de funicón |
| **af** | Seleccionar función completa |
| **ic** | Seleccionar dentro de clase |
| **ac** | Seleccionar clase completa |

### Ventanas Flotantes (Scroll)

| Mapeo | Función |
|-------|---------|
| **Ctrl + f** | Desplazar hacia abajo en popup flotante |
| **Ctrl + b** | Desplazar hacia arriba en popup flotante |

### Selección de Rango

| Mapeo | Función |
|-------|---------|
| **Ctrl + s** | Seleccionar rango (en modo normal y visual) |

### Listas de CoC

| Mapeo | Función |
|-------|---------|
| **Espacio + a** | Ver todos los diagnósticos ******* |
| **Espacio + e** | Gestionar extensiones |
| **Espacio + c** | Ver comandos disponibles |
| **Espacio + o** | Ver outline (estructura del documento) |
| **Espacio + s** | Buscar símbolos en workspace |
| **Espacio + j** | Siguiente item en lista |
| **Espacio + k** | Item anterior en lista |
| **Espacio + p** | Reanudar última lista |

---

## 🔨 UltiSnips (Snippets/Plantillas)

**Descripción:** Motor de snippets para insertar código predefinido (paréntesis, comillas, etc.) y cerrar tags HTML/JSX

| Mapeo | Función |
|-------|---------|
| **Espacio + ue** | Expandir snipped actual |
| **Ctrl + l** | Saltar al siguiente placeholder en snippet |
| **Ctrl + h** | Saltar al placeholder anterior en snippet |
| **Espacio + us** | Abrir editor de snippets |

---

## AutoPairs y Edición

**Descripción:** Plugins para automatizar la inserción de caracteres pareados (paréntesis, comillas, etc.) y cerrar tags HTML/JSX.

- `nvim-autopairs`: Cierra automáticamente paréntesis, corchetes, llaves y comillas
- `vim-closetag`: Cierra automáticamente tags HTML/JSX
- `vim-surround`: Rodea fácilmente selecciones de texto con caracteres
    - **s** (en modo visual): Rodear selección

---

## 🚀 Testing (Ejecución de Tests)

**Descripción:** Plugin `vim-test` para ejecutar tests unitarios. Corre tests usando la configuración de tu proyecto.

| Mapeo | Función |
|-------|---------|
| **Espacio + tn** | Ejecutar test más cercanos |
| **Espacio + tf** | Ejecutar todos los test del archivo actual |
| **Espacio + ts** | Ejecutar suite de tests completa |

---

## 📂 División y Gestión de Ventanas

| Mapeo | Función |
|-------|---------|
| **Espacio >** | Expandir vantana actual 10 caracteres a la derecha |
| **Espacio + <** | Reducir ventana actual 10 caracteres desde la derecha |
| **Espacio + sph** | Dividir horizontalmente (split) |
| **Espacio + spv** | Dividir verticalemente (vsplit) |

---

## 🔌 Terminal Integrada (ToggleTerm)

**Descripción:** Terminal integrada en NeoVim dentro de una ventana separada.

| Mapeo | Función |
|-------|---------|
| **Ctrl + t** | Alternar terminal integrada |

### Dentro de la Terminal

| Mapeo | Función |
|-------|---------|
| **Ctrl + h** | Navegar a ventana izquierda (sale de la termilan) |
| **Ctrl + t** | Cerrar terminal (desde modo terminal) |
| **Ctr + Ctrl +** ** | Modo normal en terminal |

---

##  📜 Gestión de Tabs

| Mapeo | Función |
|-------|---------|
| **Espacio + h** | Tab anterior |
| **Espacio + l** | Tab siguiente |

---

## 📋 Gestión de Buffers

| Mapeo | Función |
|-------|---------|
| **Espacio + ob** | Listar y seleccionar buffer |

---

## 📜 Movimiento de Texto

**Descripción:** Mover líneas completas arriba y abajo manteniendolas indentadas correctamente.

| Mapeo | Función |
|-------|---------|
| **Espacio + j** | Mover línea actual hacia abajo |
| **Espacio + k** | Mover línea actual hacia arriba |
| **Shift + J** (en visual) | Mover líneas seleccionadas hacia abajo |
| **Shift + K** (en visual) | Mover líneas seleccionadas hacia arriba |

---

## 🎯 Scroll Rápido

**Descripción:** Desplazamiento de 10 líneas a la vez.

| Mapeo | Función |
|-------|---------|
| **Alt + j** | Desplazar 10 líneas hacia abajo |
| **Alt + k** | Desplazar 10 líneas hacia arriba |

---

## 📍 Búsqueda (Mantener Centrado)

**Descripción:** Búsqueda mejorada que mantiene el cursor centrado en pantalla.

| Mapeo | Función |
|-------|---------|
| **n** | Siguiente resultado (centrado) |
| **N** | Resultado anterior (centrado) |
| **J** | Unir líneas  (mantener centrado) |

---

## 🔄 Git Integración (Fugitive + GitSigns)

**Descripción:** Integración completa con Git. Fugitive para comandos Git y GitSigns para visualización de cambios.

| Mapeo | Función |
| **Espacio + G** | Abrir panel de Git (`:Git`) |
| **Espacio + gp** | Push a repositorio remoto |
| **Espacio + gl** | Pull del repositorio remoto |
| **Espacio + P** | Copiar ruta del archivo actual al portapapeles |

### Comando abreviados

| Mapeo | Función |
|-------|---------|
| **blame** | Gblame |
| **diff** | Gdiff |
| **tree** | NvimTreeToggle |
| **find** | NvimTreeFindFile |

---

## 🔗 Punto-Coma Rápido

| Mapeo | Función |
|-------|---------|
| **Espacio + ;** | Añadir `;` al final de la línea |

---

## 🎪 Leap (Navegación Rápida por Pseudo-vision jumps)

**Descripción:** Plugin para navegación ultra-rápida escribiendo dos caracteres destino. Más intuitivo que easymotion.

- Activación automática con motions estándar de Vim
- Escribe dos caracteres para saltar a esa ubicación

---

## 📊 Status Bar (Lightline con Integración ALE)

**Descripción:** Barra de estado personalizada que muestra:

- Modo actual
- Rama de Git
- Errores/Advertencias de linting (ALE)
- Posición del cursor
- Tipo de archivo

Integración automática con CoC para diagnósticos.

---

## 💅 Funcionalidades Adicionales

### Comentarios (NerCommenter)

- **Ctrl + /** (según configuración): Comentar/descomentar línea o selección.

### Indentación visual (IndentLine)

- Muestra líneas verticales para visualizar identación.

### Editorconfig

- Configura automáticamente formatos según archivo `.editorconfig` del proyecto.

### Copilot

- Sugerencias de código basadas en IA mientras escribes.
- Aceptar con Tab (generalmente).

### Markdown Preview

- Previsualización de archivos Markdown en el navegador durante edición.

---

## 🔗 Mappings personalizados

### VIM Motions Estándar (No Modificadas)

Todos los movimientos estándar de Vim funcionan normalmente:
- **h, j, k, l:** movimiento del cursor.
- **w, b, e:** Movimiento por palabras.
- **0, $, ^**: Inicio/fin de línea
- **gg, G:** Inicio/Fin de archivo.
- **d, y, c:** Delete, yank, change.
- **v,V:** Visual mode.
- **u, Ctrl + r:** Undo/Redo.
- etc.

---

## 🎯 Resumen de Teclas Especiales

- **Leader:** `Espacio` ← La tecla principal para casi todos los comandos.
- **Alt:** `Alt` ← Usado para scroll rápido.
- **Ctrl:** `Ctrl` ← Usado para completación y otras funciones avanzadas.
- **Shift:** `Shift` ← Usado para operaciones inversa/alternativas.

---

**Última actualización:** Enero 2026__
**Configuración:** NeoVim con Lua + Vimscript
