# Recetario Accesible con Reach UI

Proyecto web de 5 páginas HTML que implementa un recetario accesible utilizando componentes de Reach UI (Combobox, MenuButton, Tabs, Accordion). Todo funciona directamente en el navegador sin necesidad de build tools.

## 📋 Estructura del Proyecto

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

## 🚀 Cómo Usar

### Opción 1: Script automatizado (recomendado)

```bash
chmod +x start.sh
./start.sh
```

El script:
1. Verifica que Python esté instalado
2. Inicia servidor HTTP en puerto 8000 (o 8001 si está ocupado)
3. Abre automáticamente el navegador en `http://localhost:8000/Index.html`

### Opción 2: Manual

```bash
python3 -m http.server 8000
```

Luego abre en tu navegador: `http://localhost:8000/Index.html`

### ⚠️ No abrir con file://

Las páginas usan ES Modules y deben servirse desde un servidor HTTP. No funcionan correctamente con el protocolo `file://`.

## 🛠️ Tecnologías

- **React 18.3.1** - Biblioteca UI (cargada desde esm.sh)
- **Reach UI 0.18.0** - Componentes accesibles:
  - `@reach/combobox` - Autocompletado accesible
  - `@reach/menu-button` - Menú desplegable
  - `@reach/tabs` - Pestañas accesibles
  - `@reach/accordion` - Acordeón expandible
- **HTM 3.1.1** - JSX-like syntax sin build step
- **Import Maps** - Resolución de módulos sin bundler

## ✨ Características de Accesibilidad

- Navegación por teclado completa
- ARIA labels y roles apropiados
- Contraste de color cumple WCAG AA
- Componentes Reach UI con soporte screen reader
- Semántica HTML5 correcta

## 📁 Arquitectura

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

## 🎨 Temas de Color

Cada página tiene su propia paleta:
- **Index**: Azul cielo + Rosa (gradiente radial)
- **Receta**: Naranja + Gris oscuro
- **Favoritos**: Púrpura + Gris azulado
- **Categorias**: Verde + Gris carbón
- **Subir_Receta**: Cyan + Gris marino

## 🔗 Flujo de Navegación

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

## 📝 Requisitos

- **Python 3.x** (para servidor HTTP)
- **Navegador moderno** con soporte para:
  - ES Modules
  - Import Maps
  - Fetch API

Navegadores compatibles:
- Chrome/Edge 89+
- Firefox 108+
- Safari 16.4+

## 🐛 Solución de Problemas

**Error: "Failed to resolve module specifier"**
- Asegúrate de usar un servidor HTTP, no `file://`

**Error: React #321**
- Ya resuelto usando import maps compartidos

**Puerto 8000 ocupado**
- El script `start.sh` detecta y usa puerto 8001 automáticamente
- O especifica otro: `python3 -m http.server 9000`

## 📄 Licencia

Proyecto educativo - Uso libre para aprendizaje.

---

**Última actualización**: 20 de diciembre de 2025
