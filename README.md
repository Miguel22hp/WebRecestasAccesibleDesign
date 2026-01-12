# Recetario Accesible con Reach UI / Accessible Recipe Book with Reach UI

[🇪🇸 Español](#español) | [🇬🇧 English](#english)

---

## Español

Proyecto web de 5 páginas HTML que implementa un recetario accesible utilizando componentes de Reach UI (Combobox, MenuButton, Tabs, Accordion). Todo funciona directamente en el navegador sin necesidad de build tools.

## Estructura del Proyecto

### Páginas HTML

- **Index.html** - Página de inicio con buscador de recetas
  - Implementa **Combobox** de Reach UI para buscar recetas
  - **MenuButton** para navegación rápida
  - Enlaces a todas las secciones

- **Receta.html** - Vista detallada de una receta
  - Implementa **Tabs** de Reach UI con 3 pestañas:
    - Ingredientes
    - Pasos de preparación
    - Imágenes
  
- **Categorias.html** - Exploración por categorías
  - Implementa **Accordion** de Reach UI
  - 4 categorías desplegables: Rápidas, Veganas, Pescado, Horno

- **Favoritos.html** - Recetas guardadas como favoritas
  - Grid de tarjetas con recetas destacadas
  - Enlaces a vista de detalle

- **Subir_Receta.html** - Formulario para compartir recetas
  - Formulario con validación HTML5
  - Campos: nombre, tiempo, ingredientes, pasos

### Hojas de Estilo (css/)

- **css/index.css** - Estilos para la página de inicio
- **css/receta.css** - Estilos para vista de receta
- **css/categorias.css** - Estilos para acordeón de categorías
- **css/favoritos.css** - Estilos para grid de favoritos
- **css/subir_receta.css** - Estilos para formulario

Cada CSS tiene su propio tema de color y es completamente independiente.

### Otros Archivos

- **MapaNavegacion.drawio** - Diagrama de flujo del proyecto (Draw.io)
- **package.json** - Metadatos del proyecto (opcional, no se usa en runtime)
- **start.sh** - Script para iniciar servidor y abrir navegador
- **.gitignore** - Archivos excluidos de Git

## Cómo Usar

### Opción 1: Script automatizado (recomendado)

**Linux/Mac:**
```bash
chmod +x start.sh
./start.sh
```

**Windows:**
```powershell
wsl
cd ruta/al/repo/clonado
dos2unix start.sh
chmod +x start.sh
./start.sh
```
Y copiar y pegar la dirección `http://localhost:8000/Index.html` en el navegador si no se abre

El script:
1. Verifica que Python esté instalado
2. Inicia servidor HTTP en puerto 8000 (o 8001 si está ocupado)
3. Abre automáticamente el navegador en `http://localhost:8000/Index.html`

### Opción 2: Manual

```bash
python3 -m http.server 8000
```

Luego abre en tu navegador: `http://localhost:8000/Index.html`

### No abrir con file://

Las páginas usan ES Modules y deben servirse desde un servidor HTTP. No funcionan correctamente con el protocolo `file://`.

## Tecnologías

- **React 18.3.1** - Biblioteca UI (cargada desde esm.sh)
- **Reach UI 0.18.0** - Componentes accesibles:
  - `@reach/combobox` - Autocompletado accesible
  - `@reach/menu-button` - Menú desplegable
  - `@reach/tabs` - Pestañas accesibles
  - `@reach/accordion` - Acordeón expandible
- **HTM 3.1.1** - JSX-like syntax sin build step
- **Import Maps** - Resolución de módulos sin bundler

## Características de Accesibilidad

- Navegación por teclado completa
- ARIA labels y roles apropiados
- Contraste de color cumple WCAG AA
- Componentes Reach UI con soporte screen reader
- Semántica HTML5 correcta

## Arquitectura

```
ProyectoAccesibleDesign/
├── Index.html              # Inicio (h1: Inicio)
├── Receta.html             # Receta (h1: Receta)
├── Categorias.html         # Categorias (h1: Categorias)
├── Favoritos.html          # Favoritos (h1: Favoritos)
├── Subir_Receta.html       # Subir_Receta (h1: Subir_Receta)
├── css/
│   ├── index.css
│   ├── receta.css
│   ├── categorias.css
│   ├── favoritos.css
│   └── subir_receta.css
├── MapaNavegacion.drawio
├── package.json
├── start.sh
├── .gitignore
└── README.md
```

## Flujo de Navegación

```
Inicio (Index.html)
  ├── Combobox → Receta.html
  ├── MenuButton → Favoritos.html
  ├── MenuButton → Categorias.html
  └── MenuButton → Subir_Receta.html

Receta.html
  └── Tabs: Ingredientes | Pasos | Imágenes

Categorias.html
  └── Accordion: 4 categorías expandibles

Favoritos.html
  └── Grid de recetas favoritas → Receta.html

Subir_Receta.html
  └── Formulario de envío
```

## Requisitos

- **Python 3.x** (para servidor HTTP)
- **Navegador moderno** con soporte para:
  - ES Modules
  - Import Maps
  - Fetch API

Navegadores compatibles:
- Chrome/Edge 89+
- Firefox 108+
- Safari 16.4+

## Solución de Problemas

**Error: "Failed to resolve module specifier"**
- Asegúrate de usar un servidor HTTP, no `file://`

**Puerto 8000 ocupado**
- El script `start.sh` detecta y usa puerto 8001 automáticamente
- O especifica otro: `python3 -m http.server 9000`

## Licencia

Proyecto educativo - Uso libre para aprendizaje.

---

**Última actualización**: 12 de enero de 2026

---

## English

Web project with 5 HTML pages implementing an accessible recipe book using Reach UI components (Combobox, MenuButton, Tabs, Accordion). Everything works directly in the browser without build tools.

## Project Structure

### HTML Pages

- **Index.html** - Home page with recipe search
  - Implements Reach UI **Combobox** for recipe search
  - **MenuButton** for quick navigation
  - Links to all sections

- **Receta.html** - Detailed recipe view
  - Implements Reach UI **Tabs** with 3 tabs:
    - Ingredients
    - Preparation steps
    - Images
  
- **Categorias.html** - Browse by categories
  - Implements Reach UI **Accordion**
  - 4 collapsible categories: Quick, Vegan, Fish, Oven

- **Favoritos.html** - Saved favorite recipes
  - Grid of cards with featured recipes
  - Links to detail view

- **Subir_Receta.html** - Form to share recipes
  - Form with HTML5 validation
  - Fields: name, time, ingredients, steps

### Stylesheets (css/)

- **css/index.css** - Styles for home page
- **css/receta.css** - Styles for recipe view
- **css/categorias.css** - Styles for categories accordion
- **css/favoritos.css** - Styles for favorites grid
- **css/subir_receta.css** - Styles for form

Each CSS has its own color theme and is completely independent.

### Other Files

- **MapaNavegacion.drawio** - Project flow diagram (Draw.io)
- **package.json** - Project metadata (optional, not used at runtime)
- **start.sh** - Script to start server and open browser
- **.gitignore** - Files excluded from Git

## How to Use

### Option 1: Automated script (recommended)

**Linux/Mac:**
```bash
chmod +x start.sh
./start.sh
```

**Windows:**
```powershell
wsl
cd path/to/cloned/repo
dos2unix start.sh
chmod +x start.sh
./start.sh
```
Copy and paste `http://localhost:8000/Index.html` in the web browser

The script:
1. Verifies Python is installed
2. Starts HTTP server on port 8000 (or 8001 if occupied)
3. Automatically opens browser at `http://localhost:8000/Index.html`

### Option 2: Manual

```bash
python3 -m http.server 8000
```

Then open in your browser: `http://localhost:8000/Index.html`

### Don't open with file://

Pages use ES Modules and must be served from an HTTP server. They don't work correctly with the `file://` protocol.

## Technologies

- **React 18.3.1** - UI library (loaded from esm.sh)
- **Reach UI 0.18.0** - Accessible components:
  - `@reach/combobox` - Accessible autocomplete
  - `@reach/menu-button` - Dropdown menu
  - `@reach/tabs` - Accessible tabs
  - `@reach/accordion` - Expandable accordion
- **HTM 3.1.1** - JSX-like syntax without build step
- **Import Maps** - Module resolution without bundler

## Accessibility Features

- Full keyboard navigation
- Appropriate ARIA labels and roles
- Color contrast meets WCAG AA
- Reach UI components with screen reader support
- Correct HTML5 semantics

## Architecture

```
ProyectoAccesibleDesign/
├── Index.html              # Home (h1: Home)
├── Receta.html             # Recipe (h1: Recipe)
├── Categorias.html         # Categories (h1: Categories)
├── Favoritos.html          # Favorites (h1: Favorites)
├── Subir_Receta.html       # Upload Recipe (h1: Upload Recipe)
├── css/
│   ├── index.css
│   ├── receta.css
│   ├── categorias.css
│   ├── favoritos.css
│   └── subir_receta.css
├── MapaNavegacion.drawio
├── package.json
├── start.sh
├── .gitignore
└── README.md
```

## Navigation Flow

```
Home (Index.html)
  ├── Combobox → Receta.html
  ├── MenuButton → Favoritos.html
  ├── MenuButton → Categorias.html
  └── MenuButton → Subir_Receta.html

Receta.html
  └── Tabs: Ingredients | Steps | Images

Categorias.html
  └── Accordion: 4 expandable categories

Favoritos.html
  └── Grid of favorite recipes → Receta.html

Subir_Receta.html
  └── Submission form
```

## Requirements

- **Python 3.x** (for HTTP server)
- **Modern browser** with support for:
  - ES Modules
  - Import Maps
  - Fetch API

Compatible browsers:
- Chrome/Edge 89+
- Firefox 108+
- Safari 16.4+

## Troubleshooting

**Error: "Failed to resolve module specifier"**
- Make sure to use an HTTP server, not `file://`

**Port 8000 occupied**
- The `start.sh` script detects and uses port 8001 automatically
- Or specify another: `python3 -m http.server 9000`

## License

Educational project - Free to use for learning.

---

**Last updated**: January 12, 2026
