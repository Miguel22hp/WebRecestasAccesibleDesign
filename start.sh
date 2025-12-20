#!/bin/bash

# Script para iniciar el servidor y abrir el navegador
# Proyecto: Recetario Accesible con Reach UI

echo "🚀 Iniciando servidor para Recetario Accesible..."

# Verificar que Python está instalado
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null
then
    echo "❌ Error: Python no está instalado. Instala Python 3 para continuar."
    exit 1
fi

# Determinar comando Python
PYTHON_CMD="python3"
if ! command -v python3 &> /dev/null; then
    PYTHON_CMD="python"
fi

# Puerto del servidor
PORT=8000

echo "✅ Python encontrado: $PYTHON_CMD"
echo "📡 Iniciando servidor HTTP en puerto $PORT..."

# Verificar si el puerto está ocupado
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null 2>&1; then
    echo "⚠️  El puerto $PORT está ocupado. Usando puerto alternativo 8001..."
    PORT=8001
fi

# Abrir navegador después de 2 segundos
(sleep 2 && echo "🌐 Abriendo navegador..." && xdg-open "http://localhost:$PORT/Index.html" 2>/dev/null || open "http://localhost:$PORT/Index.html" 2>/dev/null || echo "Abre manualmente: http://localhost:$PORT/Index.html") &

# Iniciar servidor
echo "✨ Servidor corriendo en http://localhost:$PORT"
echo "📄 Página principal: http://localhost:$PORT/Index.html"
echo "⏹️  Presiona Ctrl+C para detener el servidor"
echo ""

$PYTHON_CMD -m http.server $PORT
