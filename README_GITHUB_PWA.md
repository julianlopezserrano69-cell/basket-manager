# Basket Manager V8.5.121 — GitHub / PWA

Paquete COMPLETO listo para subir a la raíz del repositorio:
https://github.com/julianlopezserrano69-cell/basket-manager

## Incluye
- index.html — aplicación completa V8.5.121.
- sw.js — Service Worker con caché V8.5.121.
- manifest.webmanifest — instalación PWA.
- icon-192.png / icon-512.png — iconos PWA.
- icons/icon-180.png / icons/icon-192.png — compatibilidad iPhone/iPad.
- .nojekyll — GitHub Pages.
- PUBLICAR_GITHUB.bat — publicación por Git.
- históricos auxiliares heredados del MASTER.

## Novedad V8.5.121
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
abre primero la URL en el navegador y recarga para que el Service Worker V8.5.121
sustituya la caché anterior.


## V8.5.121
PDF de Control de asistencia corregido y ampliado: cuadros resumen, resumen por jugador, sesiones computadas, detalle completo por sesión/jugador y criterios del informe, con diseño A4 apaisado multipágina.


## V8.5.121
Corrección definitiva del PDF de Control de asistencia: impresión en documento aislado, sin heredar el layout/rotaciones/visibilidad de la SPA. Incluye KPIs, resumen, sesiones y detalle completo.


## V8.5.121
PDF nativo real: se genera un archivo PDF binario con jsPDF + AutoTable y se abre directamente en el visor PDF del navegador. No usa window.print ni diálogo de impresión. Incluye 7 KPIs, resumen por jugador, sesiones computadas y detalle completo.


## V8.5.121
- PDF de Control de asistencia generado físicamente en horizontal 297 x 210 mm.
- Ya no abre visor ni impresión: descarga automática mediante jsPDF.
- Cada sección empieza en página nueva.
- Los encabezados de todas las tablas se repiten automáticamente cuando una tabla continúa en otra página.
- Nombre automático: CLUB_Control_Asistencia_DD-MM-AAAA.pdf.


## V8.5.121
Control de asistencia PDF: añade Mesociclo, Estado Mesociclo, Microciclo y Estado Microciclo en Sesiones computadas y Detalle. Los partidos muestran —. Los estados reutilizan el cálculo real/automático de la planificación.
