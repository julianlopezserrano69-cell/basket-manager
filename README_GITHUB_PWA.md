# Basket Manager V8.5.116 — GitHub / PWA

Paquete COMPLETO listo para subir a la raíz del repositorio:
https://github.com/julianlopezserrano69-cell/basket-manager

## Incluye
- index.html — aplicación completa V8.5.116.
- sw.js — Service Worker con caché V8.5.116.
- manifest.webmanifest — instalación PWA.
- icon-192.png / icon-512.png — iconos PWA.
- icons/icon-180.png / icons/icon-192.png — compatibilidad iPhone/iPad.
- .nojekyll — GitHub Pages.
- PUBLICAR_GITHUB.bat — publicación por Git.
- históricos auxiliares heredados del MASTER.

## Novedad V8.5.116
Entrenamientos → Control de asistencia.

La pantalla reutiliza los datos ya registrados:
- Entrenamientos realizados: asistencia, puntualidad, vestimenta y actitud.
- Partidos finalizados: convocados del encuentro.
- No convocado no cuenta como ausencia a partido.
- Filtros por temporada, equipo y fechas.
- Vista resumen y detalle por sesión.
- Informe imprimible / PDF.

## Publicación manual en GitHub
Descomprime el ZIP y sube TODO su contenido a la raíz del repositorio,
reemplazando los ficheros anteriores cuando GitHub lo solicite.

URL publicada:
https://julianlopezserrano69-cell.github.io/basket-manager/

Después de publicar, en una instalación PWA antigua conviene cerrar completamente
Basket Manager y volver a abrirla. Si siguiera mostrando una versión anterior,
abre primero la URL en el navegador y recarga para que el Service Worker V8.5.116
sustituya la caché anterior.
