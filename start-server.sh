#!/bin/bash

# Lighthouse Portal Design System - Local Server
# This script starts a local web server so you can view the design system

cd "$(dirname "$0")"

echo "🕯️  Starting Lighthouse Portal Design System Server..."
echo "📍 Server URL: http://localhost:8000"
echo "🌐 Open this URL in your browser to view the design system"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Start Python HTTP server
python3 -m http.server 8000

