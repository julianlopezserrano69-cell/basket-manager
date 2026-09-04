# Basket Manager V8.5.70 — GitHub / PWA

Esta versión parte de **V8.5.69** y está preparada para:

- alojarse en GitHub Pages;
- usar Supabase como base de datos compartida;
- instalarse en Windows como aplicación web (PWA);
- mantener una única URL para todos los PCs.

## 1. Crear el repositorio

En GitHub:

1. **New repository**
2. Nombre recomendado: `basket-manager`
3. Puede ser público o privado según tu plan/configuración de Pages.
4. No hace falta añadir README ni .gitignore desde GitHub.

## 2. Subir estos ficheros

Sube **todo el contenido de esta carpeta** a la raíz del repositorio.

Debe quedar aproximadamente:

```text
basket-manager/
├── index.html
├── manifest.webmanifest
├── sw.js
├── .nojekyll
├── .github/
│   └── workflows/
│       └── pages.yml
└── ...resto de assets de Basket Manager
```

## 3. Activar GitHub Pages

En GitHub:

**Settings → Pages → Build and deployment → Source → GitHub Actions**

Después haz un commit/push a `main`.

La acción `Deploy Basket Manager to GitHub Pages` publicará la web.

La URL tendrá normalmente esta forma:

```text
https://TU_USUARIO.github.io/basket-manager/
```

## 4. Comprobar Supabase

La aplicación seguirá usando el mismo proyecto Supabase.

Importante:
- Todos los PCs deben usar la misma URL de Basket Manager.
- Todos los usuarios autorizados verán los mismos datos.
- Las políticas RLS y usuarios de Supabase siguen siendo las que controlan el acceso.

## 5. Autorizar la URL en Supabase

En Supabase revisa:

**Authentication → URL Configuration**

Añade como Redirect URL la URL de GitHub Pages, por ejemplo:

```text
https://TU_USUARIO.github.io/basket-manager/**
```

Si Basket Manager usa login por email/password sin redirección externa, igualmente es recomendable registrar el dominio publicado.

## 6. Instalar en Windows como aplicación

En Microsoft Edge o Google Chrome abre la URL de Basket Manager.

Después:

**Edge**
- Menú `…`
- Apps
- Instalar Basket Manager

**Chrome**
- Menú `⋮`
- Guardar y compartir / Instalar página como aplicación
  o el icono de instalación que aparezca en la barra de direcciones.

Se abrirá en una ventana independiente y aparecerá en:
- Menú Inicio;
- búsqueda de Windows;
- barra de tareas si se ancla.

## 7. Actualizaciones

A partir de esta versión ya no hace falta copiar `index.html` PC por PC.

Flujo:

```text
modificamos Basket Manager
        ↓
subimos nueva versión a GitHub
        ↓
GitHub Pages publica
        ↓
todos los PCs reciben la actualización
```

El Service Worker V8.5.70 elimina cachés antiguas al actualizar.

## Recomendación

Antes de dar acceso al resto de usuarios:

1. Publicar.
2. Probar login.
3. Comprobar Entrenamientos.
4. Comprobar Pizarra/Biblioteca.
5. Comprobar PDF.
6. Comprobar Scouting.
7. Instalar en un segundo PC y confirmar que ambos ven los mismos datos de Supabase.
