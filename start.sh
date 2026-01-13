#!/bin/bash

# Script to start the server and open the browser
# Project: Accessible Recipe Book with Reach UI

echo " Starting Accessible Recipe Book server..."

# Verify that Python is installed
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null
then
    echo " Error: Python is not installed. Install Python 3 to continue."
    exit 1
fi

# Determine Python command
PYTHON_CMD="python3"
if ! command -v python3 &> /dev/null; then
    PYTHON_CMD="python"
fi

# Server port
PORT=8000

echo " Python found: $PYTHON_CMD"
echo " Starting HTTP server on port $PORT..."

# Check if port is in use
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null 2>&1; then
    echo "  Port $PORT is in use. Using alternative port 8001..."
    PORT=8001
fi

# Open browser after 2 seconds
(sleep 2 && echo " Opening browser..." && xdg-open "http://localhost:$PORT/Index.html" 2>/dev/null || open "http://localhost:$PORT/Index.html" 2>/dev/null || echo "Open manually: http://localhost:$PORT/Index.html") &

# Start server
echo " Server running at http://localhost:$PORT"
echo " Home page: http://localhost:$PORT/Index.html"
echo "  Press Ctrl+C to stop the server"
echo ""

$PYTHON_CMD -m http.server $PORT
