#!/bin/bash
# ============================================
# Script para publicar cambios en GitHub Pages
# Autor: Johny Lozano + ChatGPT 💡
# ============================================

echo "🔍 Verificando estado del repositorio..."
git status

echo "📦 Agregando todos los cambios..."
git add .

# Pide mensaje de commit
echo "✍️  Escribe un mensaje para el commit:"
read mensaje

# Si no escribes nada, usa mensaje por defecto
if [ -z "$mensaje" ]; then
  mensaje="Actualizar sitio y nuevos posts"
fi

echo "💾 Creando commit..."
git commit -m "$mensaje"

echo "🌍 Subiendo al repositorio remoto (main)..."
git push origin main

echo "✅ ¡Publicación completada con éxito!"
echo "⏳ Espera 1-2 minutos para que GitHub Pages regenere tu sitio."