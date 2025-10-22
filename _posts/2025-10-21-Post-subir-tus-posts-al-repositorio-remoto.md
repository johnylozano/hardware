---
layout: post
title: "script automático llamado publicar.sh para que subas tus posts al repositorio con un solo comando."
date: 2025-10-21
---
Contenido del Cuarto post de prueba.
script automático llamado publicar.sh para que subas tus posts al repositorio con un solo comando.

🧩 1️⃣ Crea el archivo

En tu carpeta principal del proyecto (tecnologia-lozanos/), crea un nuevo archivo llamado:

publicar.sh

🧩 2️⃣ Pega este contenido dentro
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

🧩 3️⃣ Dale permisos de ejecución

En la terminal (dentro de tu carpeta tecnologia-lozanos), ejecuta:

chmod +x publicar.sh

🧩 4️⃣ Cada vez que crees o edites un post

Simplemente escribe:

./publicar.sh


Y el script hará automáticamente:

git add .

git commit -m "tu mensaje"

git push origin main