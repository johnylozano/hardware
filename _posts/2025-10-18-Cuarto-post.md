---
layout: post
title: "Cuarto Post de tecnologia-lozanos"
date: 2025-10-18
---
Contenido del Cuarto post de prueba.

GITHUBPAGE ....
Excelenta aporte para crear conectido...!!!

Subir nuevos posts desde VS Code al repositorio remoto será súper fácil.
Te dejo los comandos exactos que debes usar, con explicación 👇


🧱 1. Crear tu nuevo post

En tu carpeta del proyecto (ejemplo: ~/github/tecnologia-lozanos), crea tu post dentro de la carpeta _posts.

El formato de nombre es obligatorio:

_posts/2025-10-20-mi-primer-post.md


Dentro del archivo pon este encabezado (YAML Front Matter):

---
layout: post
title: "Mi primer post desde VS Code"
date: 2025-10-20
categories: [blog, proyectos]
---


Y debajo escribe tu contenido normal en Markdown.

⚙️ 2. Guardar y preparar cambios en Bash

Abre el terminal (en VS Code o Git Bash) y ejecuta, estando dentro de tu carpeta del proyecto:

git status


👉 Para ver qué archivos nuevos o modificados hay.

🚀 3. Agregar los cambios
git add .


Esto agrega todos los cambios (nuevos posts, ediciones, etc.) al área de staging.

💬 4. Crear un commit
git commit -m "Agregar nuevo post: Mi primer post desde VS Code"


Esto guarda los cambios localmente con un mensaje claro.

🌍 5. Subir al repositorio remoto (GitHub)
git push origin main


🔹 GitHub Actions se ejecutará automáticamente.
🔹 Espera unos minutos y tu post aparecerá publicado en tu sitio web.

******************

🧠 Extra: si solo quieres probar antes de subir

Puedes ver el sitio localmente con:

bundle exec jekyll serve


y luego visitar 👉 http://localhost:4000

***********************
