#!/bin/bash
# ============================================
# Script seguro para publicar cambios en GitHub Pages
# Autor: Johny Lozano + ChatGPT 💡
# ============================================

echo "🔍 Verificando estado del repositorio..."
git status

# Verifica si hay cambios para subir
if git diff-index --quiet HEAD --; then
    echo "ℹ️ No hay cambios para publicar. El repositorio ya está actualizado."
    exit 0
fi

echo "📦 Agregando todos los cambios..."
git add .

# Pide mensaje de commit
echo "✍️  Escribe un mensaje para el commit (Enter = mensaje por defecto):"
read mensaje

# Mensaje por defecto
if [ -z "$mensaje" ]; then
  mensaje="Actualizar sitio y nuevos posts"
fi

echo "💾 Creando commit..."
git commit -m "$mensaje"

echo "🌍 Subiendo al repositorio remoto (main)..."
git push origin main

echo "✅ ¡Publicación completada con éxito!"
echo "⏳ Espera 1-2 minutos para que GitHub Pages regenere tu sitio."
