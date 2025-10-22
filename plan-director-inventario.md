# PLAN DIRECTOR DEL PROYECTO
## Sistema de Inventario Inteligente de Terrenos Agrarios y Forestales

**Documento Vivo - Versión 1.0**  
**Fecha Inicio:** Octubre 2025  
**Última Actualización:** 19/10/2025

---

## ÍNDICE

1. [Visión y Objetivos](#1-visión-y-objetivos)
2. [Modelo de Trabajo](#2-modelo-de-trabajo)
3. [Stack Técnico Definitivo](#3-stack-técnico-definitivo)
4. [Roadmap General](#4-roadmap-general)
5. [Fase 0: Preparación (Semanas 1-4)](#5-fase-0-preparación-semanas-1-4)
6. [Fase 1: Desarrollo MVP (Semanas 5-12)](#6-fase-1-desarrollo-mvp-semanas-5-12)
7. [Fase 2: Validación (Semanas 13-16)](#7-fase-2-validación-semanas-13-16)
8. [Fase 3: Financiación (Semanas 17-24)](#8-fase-3-financiación-semanas-17-24)
9. [Fase 4: Implementación (Semanas 25-36)](#9-fase-4-implementación-semanas-25-36)
10. [Sistema de Seguimiento](#10-sistema-de-seguimiento)
11. [Registro de Decisiones](#11-registro-de-decisiones)
12. [Contactos y Networking](#12-contactos-y-networking)

---

## 1. VISIÓN Y OBJETIVOS

### 1.1. Misión
Crear un sistema de inventario de terrenos agrarios y forestales basado en software libre, IA local y multilingüismo (euskera/castellano/inglés) que permita a las administraciones públicas vascas tomar decisiones informadas sobre gestión territorial.

### 1.2. Objetivos Cuantificables
- **Técnico:** MVP funcional con clasificación automática de 1.000 parcelas en <24h
- **Validación:** 5+ conversaciones con técnicos, feedback documentado
- **Financiación:** 1 propuesta de subvención presentada antes de Semana 24
- **Implementación:** 1 piloto real en funcionamiento en una diputación

### 1.3. No-Objetivos (Fuera de Alcance v1.0)
- Integración con sistemas de gestión agraria complejos (SIGPAC avanzado)
- App móvil nativa (solo web responsive)
- Blockchain o tecnologías experimentales
- Predicción climática o modelos hidrológicos complejos

---

## 2. MODELO DE TRABAJO

### 2.1. División de Responsabilidades

#### **Parte Técnica (IA/Asistente)**
- Desarrollo completo del código (backend, frontend, algoritmos)
- Arquitectura y diseño de sistemas
- Documentación técnica
- Scripts de análisis y procesamiento
- Materiales de presentación técnica
- Redacción de memorias técnicas para subvenciones

#### **Parte Institucional/Comercial (Humano)**
- Contactos con técnicos y decisores de diputaciones
- Networking y construcción de relaciones
- Reuniones presenciales y videollamadas
- Negociación de pilotos y contratos
- Gestión administrativa de subvenciones
- Identificación de pain points en campo

### 2.2. Puntos de Sincronización
- **Semanal:** Revisión de avances y ajuste de prioridades
- **Cada hito:** Validación conjunta antes de pasar al siguiente
- **Feedback institucional:** Incorporación inmediata al desarrollo

---

## 3. STACK TÉCNICO DEFINITIVO

### 3.1. Backend

```yaml
Lenguaje: Python 3.11+
Framework API: FastAPI
Base de Datos: PostgreSQL 15 + PostGIS 3.4
Procesamiento Geoespacial:
  - GDAL 3.7+
  - Rasterio 1.3+
  - GeoPandas 0.14+
  - Shapely 2.0+
Colas de Trabajo: Celery + Redis
Machine Learning:
  - Scikit-learn (clasificación)
  - Rasterio + NumPy (análisis NDVI)
  - XGBoost (clasificación avanzada)
Contenedores: Docker + Docker Compose
```

**Justificación:**
- FastAPI: Rendimiento + documentación automática OpenAPI
- PostGIS: Estándar industria para datos geoespaciales
- Celery: Procesamiento asíncrono de grandes volúmenes
- Python: Ecosistema maduro para geo + IA

### 3.2. Frontend

```yaml
Framework: Vue.js 3.4 + TypeScript
Mapas: MapLibre GL JS 4.0
Manipulación Geo: Turf.js
UI Components: PrimeVue (accesibilidad + i18n integrado)
Estilos: Tailwind CSS
Gráficos: Chart.js
Build: Vite
```

**Justificación:**
- Vue.js: Curva aprendizaje suave, excelente i18n
- MapLibre: Open source, sin vendor lock-in (vs Mapbox)
- PrimeVue: Componentes empresariales accesibles
- Vite: Build rápido, HMR eficiente

### 3.3. Servidor de Mapas

```yaml
Opción Principal: GeoServer 2.24+
Formatos Servidos: WMS, WFS, WCS
Almacenamiento Tiles: MBTiles (offline) + COG (Cloud Optimized GeoTIFF)
Caché: MapProxy (opcional para producción)
```

**Justificación:**
- GeoServer: Estándar OGC, GUI administración, comunidad activa
- COG: Acceso eficiente a rasters sin servidor tiles complejo
- MBTiles: Portabilidad y despliegues offline

### 3.4. Infraestructura

```yaml
Desarrollo: Docker Compose (local)
CI/CD: GitHub Actions
Testing: pytest + pytest-cov
Documentación: MkDocs + Material theme
Repositorio: GitHub (público desde v1.0)
Licencia: EUPL 1.2 (compatible con AGPLv3)
```

### 3.5. Fuentes de Datos Identificadas

```yaml
Catastro:
  - API REST Sede Electrónica Catastro
  - WFS Inspire (parcelas catastrales)
Imágenes Satélite:
  - Sentinel-2 (ESA Copernicus, 10m resolución)
  - Landsat 8/9 (USGS, 30m resolución)
LiDAR:
  - PNOA (Plan Nacional Ortofotografía Aérea)
  - LiDAR CNIG (Centro Nacional Información Geográfica)
Cartografía Base:
  - OpenStreetMap
  - IDEE (Infraestructura Datos Espaciales España)
```

---

## 4. ROADMAP GENERAL

```
FASE 0: PREPARACIÓN          │ Semanas 1-4   │ Fundamentos técnicos + contactos iniciales
FASE 1: DESARROLLO MVP       │ Semanas 5-12  │ Código funcional + primeras demos
FASE 2: VALIDACIÓN           │ Semanas 13-16 │ Feedback técnicos + refinamiento
FASE 3: FINANCIACIÓN         │ Semanas 17-24 │ Propuestas + presentaciones decisores
FASE 4: IMPLEMENTACIÓN       │ Semanas 25-36 │ Piloto real + soporte + escalado
```

---

## 5. FASE 0: PREPARACIÓN (Semanas 1-4)

### Semana 1: Fundamentos

#### **Hitos Técnicos**
- [ ] **H0.1.1** Repositorio GitHub configurado
  - Estructura directorios: `/backend`, `/frontend`, `/docs`, `/scripts`
  - README.md básico con visión del proyecto
  - .gitignore para Python + Node.js
  - Licencia EUPL 1.2
  
- [ ] **H0.1.2** Entorno desarrollo local Docker
  - `docker-compose.yml` con PostgreSQL+PostGIS
  - Servicio backend FastAPI base
  - Servicio frontend Vue.js base
  - Script `make start` funcional

- [ ] **H0.1.3** Selección municipio piloto
  - **Criterios:** 500-2000 parcelas rústicas, datos catastro accesibles, ortofotos disponibles
  - **Candidato:** [Tu municipio - RELLENAR]
  - **Datos recopilados:** Shapefile límite municipal, lista referencias catastrales

#### **Hitos Institucionales**
- [ ] **H0.1.4** Mapeo inicial de contactos
  - Identificar 10 perfiles LinkedIn en Diputaciones (Bizkaia, Araba, Gipuzkoa)
  - Departamentos objetivo: Medio Ambiente, Agricultura, Desarrollo Rural
  - Crear hoja cálculo de seguimiento contactos

### Semana 2: Arquitectura Inicial

#### **Hitos Técnicos**
- [ ] **H0.2.1** Esquema base de datos
  - Tabla `parcelas` con geometría PostGIS
  - Tabla `clasificaciones` con taxonomía
  - Tabla `analisis` con resultados temporales
  - Scripts migración Alembic
  
- [ ] **H0.2.2** API REST básica
  - Endpoint `/parcelas` (CRUD)
  - Endpoint `/clasificaciones` (lectura)
  - Documentación automática Swagger
  - Tests unitarios básicos (>80% cobertura)

- [ ] **H0.2.3** Integración catastro
  - Script descarga WFS parcelas municipio piloto
  - Carga en PostGIS con transformación CRS
  - Validación geometrías (topología correcta)

#### **Hitos Institucionales**
- [ ] **H0.2.4** Investigación convocatorias
  - Listar 5 convocatorias potenciales (Diputaciones, GV, FEADER)
  - Fechas límite y requisitos básicos
  - Plantilla Excel seguimiento convocatorias

### Semana 3: Primeros Algoritmos

#### **Hitos Técnicos**
- [ ] **H0.3.1** Descarga imágenes Sentinel-2
  - Script Python con Sentinelsat
  - Descarga escena del municipio piloto (última 6 meses)
  - Almacenamiento en directorio `/data/sentinel`

- [ ] **H0.3.2** Cálculo NDVI básico
  - Función `calcular_ndvi(red_band, nir_band)`
  - Rasterización sobre parcelas
  - Exportación GeoTIFF + estadísticas por parcela

- [ ] **H0.3.3** Clasificación binaria v0.1
  - Algoritmo: Umbral NDVI (activo/abandonado)
  - Criterio: NDVI < 0.3 = sospechoso abandono
  - Test con 100 parcelas muestra

#### **Hitos Institucionales**
- [ ] **H0.3.4** Primera toma de contacto
  - Email/LinkedIn a 3 técnicos de perfil medio
  - Mensaje: presentación + pregunta sobre pain points
  - Objetivo: conversación informal, no venta

### Semana 4: Material Demo

#### **Hitos Técnicos**
- [ ] **H0.4.1** Frontend mapa básico
  - MapLibre con capa base OpenStreetMap
  - Carga parcelas municipio desde API
  - Popup info básica al click
  - Color según clasificación preliminar

- [ ] **H0.4.2** Exportación informe PDF
  - Librería ReportLab
  - Informe municipio: mapa + estadísticas
  - Plantilla trilingüe (euskera/castellano)

#### **Hitos Institucionales**
- [ ] **H0.4.3** Presentación ejecutiva
  - Deck 10 slides (Problema, Solución, Demo, Próximos pasos)
  - Versión PDF + Canva/PowerPoint editable
  - Script de presentación 5 minutos

- [ ] **H0.4.4** Video demo 2 minutos
  - Screen recording funcionalidad básica
  - Narración euskera + subtítulos castellano
  - Publicar en YouTube (no listado)

**✅ CHECKPOINT FASE 0:**
- MVP técnico mínimo funcionando (mapa + clasificación básica)
- Material presentación listo
- 1-3 contactos iniciales realizados
- Convocatorias identificadas

---

## 6. FASE 1: DESARROLLO MVP (Semanas 5-12)

### Semanas 5-6: Core Algoritmo

#### **Hitos Técnicos**
- [ ] **H1.1.1** Clasificador multicriterio v1.0
  - Incorporar 3 variables: NDVI, pendiente, distancia carretera
  - Modelo: Random Forest con scikit-learn
  - Dataset entrenamiento: 500 parcelas etiquetadas manualmente
  - Precisión objetivo: >75%

- [ ] **H1.1.2** Pipeline procesamiento batch
  - Celery task: procesar lote 1000 parcelas
  - Progress tracking en Redis
  - Logs estructurados (JSON)
  - Estimación tiempo restante

- [ ] **H1.1.3** Integración datos LiDAR
  - Descarga tiles LiDAR PNOA municipio
  - Cálculo pendientes raster
  - Extracción estadística por parcela

#### **Hitos Institucionales**
- [ ] **H1.1.4** Conversaciones validación (2-3)
  - Preparar guion entrevista semiestructurada
  - Duración: 30-45 minutos
  - Grabar notas pain points identificados
  - Recoger feedback sobre demo v0.1

### Semanas 7-8: Interfaz Usuario

#### **Hitos Técnicos**
- [ ] **H1.2.1** Panel clasificación avanzado
  - Filtros: categoría, municipio, rango superficie
  - Tabla resultados paginada (100 registros/página)
  - Exportación CSV/GeoJSON
  - Búsqueda por referencia catastral

- [ ] **H1.2.2** Visualización detalle parcela
  - Ficha completa: geometría, clasificación, histórico
  - Gráfico evolución NDVI temporal
  - Galería miniaturas Sentinel-2
  - Notas y etiquetas editables

- [ ] **H1.2.3** Sistema autenticación básico
  - OAuth2 con JWT
  - Roles: admin, técnico, consulta
  - Registro manual (no autoregistro público)

#### **Hitos Institucionales**
- [ ] **H1.2.4** Refinamiento mensaje
  - Actualizar presentación con aprendizajes
  - Incorporar vocabulario técnico específico
  - Preparar FAQ objeciones comunes

### Semanas 9-10: Internacionalización

#### **Hitos Técnicos**
- [ ] **H1.3.1** Sistema i18n completo
  - Vue I18n en frontend
  - Archivos JSON: `eu.json`, `es.json`, `en.json`
  - Traducción interfaz completa
  - Selector idioma persistente

- [ ] **H1.3.2** Terminología técnica euskera
  - Glosario 100+ términos: abandono=utzita, parcela=lursaila, etc.
  - Consulta Euskalterm oficial
  - Documentación interna glosario

- [ ] **H1.3.3** Informes multilingües
  - Templates PDF en 3 idiomas
  - Mapas con leyendas traducidas
  - Metadatos documentos localizados

### Semanas 11-12: Robustez y Testing

#### **Hitos Técnicos**
- [ ] **H1.4.1** Suite tests completa
  - Tests unitarios backend (>90% cobertura)
  - Tests integración API
  - Tests E2E frontend (Playwright)
  - CI pipeline automático GitHub Actions

- [ ] **H1.4.2** Documentación técnica
  - Guía instalación (README.md)
  - Documentación API (OpenAPI/Swagger)
  - Guía usuario técnico (MkDocs)
  - Diagramas arquitectura (C4 Model)

- [ ] **H1.4.3** Optimización rendimiento
  - Índices PostGIS optimizados
  - Caché Redis para consultas frecuentes
  - Paginación eficiente (cursor-based)
  - Compresión respuestas API (gzip)

#### **Hitos Institucionales**
- [ ] **H1.4.4** Demo mejorada lista
  - Video nuevo con funcionalidad completa
  - Entorno demo público (subdominio AWS/Hetzner)
  - Datos anonimizados municipio real

**✅ CHECKPOINT FASE 1:**
- MVP robusto y funcional (clasificación + visualización + informes)
- Documentación técnica completa
- 3-5 conversaciones validación completadas
- Demo pública accesible 24/7

---

## 7. FASE 2: VALIDACIÓN (Semanas 13-16)

### Semana 13-14: Iteración Feedback

#### **Hitos Técnicos**
- [ ] **H2.1.1** Implementar feedback técnicos
  - Priorizar top 5 features solicitadas
  - Ajustar criterios clasificación según experiencia campo
  - Refinar visualizaciones según usabilidad

- [ ] **H2.1.2** Casos de uso documentados
  - Escribir 3-5 user stories reales
  - Capturas pantalla flujo completo
  - Métricas impacto (ej: "reduce 80% tiempo inventario manual")

#### **Hitos Institucionales**
- [ ] **H2.1.3** Conversaciones nivel decisor (2+)
  - Agendar con jefes servicio / directores
  - Preparar pitch ejecutivo (10 min + demo 5 min)
  - Solicitar carta apoyo informal

- [ ] **H2.1.4** Identificar campeón interno
  - Buscar técnico entusiasta como "early adopter"
  - Ofrecerle participación beta testing
  - Involucrar en refinamiento producto

### Semana 15-16: Preparación Financiación

#### **Hitos Técnicos**
- [ ] **H2.2.1** Memoria técnica v1.0
  - 15-20 páginas detalle técnico
  - Secciones: arquitectura, metodología, innovación, plan trabajo
  - Anexos: diagramas, capturas, referencias científicas

- [ ] **H2.2.2** Presupuesto detallado
  - Desglose: desarrollo, hardware, formación, mantenimiento
  - Justificación costes por horas/persona
  - Plantilla Excel editable

#### **Hitos Institucionales**
- [ ] **H2.2.3** Mapa stakeholders
  - Identificar decisores clave por diputación
  - Mapear influencias e intereses
  - Estrategia aproximación personalizada

- [ ] **H2.2.4** Cartas de apoyo (2+)
  - Solicitar a técnicos entrevistados
  - Modelo carta proporcionado (fácil firma)
  - Versión física + PDF

**✅ CHECKPOINT FASE 2:**
- Producto refinado según feedback real
- Material subvención completo (memoria + presupuesto)
- 2+ cartas apoyo conseguidas
- 1+ reunión nivel decisor realizada

---

## 8. FASE 3: FINANCIACIÓN (Semanas 17-24)

### Semanas 17-20: Búsqueda Activa

#### **Hitos Institucionales**
- [ ] **H3.1.1** Análisis convocatorias detallado
  - Evaluar 5+ convocatorias específicas
  - Scoring: fit (1-5), probabilidad (1-5), cuantía
  - Seleccionar top 2 para presentar

- [ ] **H3.1.2** Personalización propuestas
  - Adaptar memoria técnica a cada convocatoria
  - Alinear objetivos con prioridades convocatoria
  - Revisar compliance requisitos formales

- [ ] **H3.1.3** Networking intensivo
  - 10+ contactos nuevos (eventos, LinkedIn)
  - Asistir a 1-2 eventos sector (jornadas desarrollo rural)
  - Presentación pitch en espacios informales

#### **Hitos Técnicos**
- [ ] **H3.1.4** Material audiovisual profesional
  - Video demo 5 min producción cuidada
  - Motion graphics explicativos
  - Subtítulos euskera/castellano/inglés

### Semanas 21-24: Presentación Formal

#### **Hitos Institucionales**
- [ ] **H3.2.1** Presentación propuesta (1-2)
  - Registro formal en plataforma convocatoria
  - Seguimiento entrega documentación
  - Confirmación recepción

- [ ] **H3.2.2** Reuniones presentación (3+)
  - Pitch completo a comisiones evaluadoras (si posible)
  - Demostraciones en vivo personalizadas
  - Q&A preparadas para objeciones

- [ ] **H3.2.3** Plan B alternativo
  - Si rechazo: identificar aprendizajes
  - Estrategia pivote: contratos servicios directos
  - Explorar financiación privada (fundaciones, banca ética)

#### **Hitos Técnicos**
- [ ] **H3.2.4** Preparación piloto low-cost
  - Diseñar versión piloto mínima
  - Presupuesto reducido (autofinanciado o microgrant)
  - Propuesta "pagar por resultados"

**✅ CHECKPOINT FASE 3:**
- 1+ propuesta subvención presentada
- 3+ reuniones nivel decisor realizadas
- Plan contingencia definido
- Feedback oficial recibido

---

## 9. FASE 4: IMPLEMENTACIÓN (Semanas 25-36)

### Semanas 25-28: Piloto Real

#### **Hitos Técnicos**
- [ ] **H4.1.1** Despliegue infraestructura cliente
  - Instalación en servidores diputación / cloud
  - Configuración PostgreSQL + PostGIS
  - Hardening seguridad (firewall, SSL, backups)
  - Documentación despliegue específica

- [ ] **H4.1.2** Carga datos territorio completo
  - Extensión a provincia o comarca
  - Procesamiento 10.000-50.000 parcelas
  - Validación calidad resultados

- [ ] **H4.1.3** Integración sistemas existentes
  - Conectores con BD corporativas
  - Exportación formatos requeridos
  - SSO con sistema autenticación existente

#### **Hitos Institucionales**
- [ ] **H4.1.4** Formación técnicos (2 sesiones)
  - Sesión 1: Uso básico interfaz (2h)
  - Sesión 2: Interpretación resultados (2h)
  - Manual usuario en euskera/castellano

### Semanas 29-32: Monitorización y Soporte

#### **Hitos Técnicos**
- [ ] **H4.2.1** Sistema logging y monitoreo
  - Prometheus + Grafana
  - Alertas errores críticos
  - Dashboard uso (requests, tiempos respuesta)

- [ ] **H4.2.2** Corrección bugs campo
  - Hotfix issues prioritarios (<48h)
  - Ciclo release quincenal
  - Changelog público

#### **Hitos Institucionales**
- [ ] **H4.2.3** Seguimiento uso real
  - Entrevistas usuarios 1 mes post-lanzamiento
  - Métricas cuantitativas: logins, consultas, exportaciones
  - Casos éxito documentados

### Semanas 33-36: Escalado y Comunicación

#### **Hitos Técnicos**
- [ ] **H4.3.1** Optimizaciones escalabilidad
  - Mejoras rendimiento según uso real
  - Preparación para 100k+ parcelas
  - Documentación lecciones aprendidas

- [ ] **H4.3.2** Publicación código abierto
  - Limpieza código sensible
  - Readme completo para comunidad
  - Licencia + Contributing guidelines
  - Release v1.0 en GitHub

#### **Hitos Institucionales**
- [ ] **H4.3.3** Comunicación éxito
  - Nota prensa diputación
  - Presentación en jornada técnica
  - Artículo blog/LinkedIn caso de uso

- [ ] **H4.3.4** Preparación réplica
  - Propuesta a otras diputaciones
  - Modelo SaaS multitenancy (opcional)
  - Estrategia expansión otras CCAA

**✅ CHECKPOINT FASE 4:**
- Piloto en producción operativo
- Usuarios reales utilizando sistema
- Código publicado open source
- Caso éxito documentado y comunicado

---

## 10. SISTEMA DE SEGUIMIENTO

### 10.1. Reuniones Sincronización

```
FRECUENCIA: Semanal (lunes, 1h)

AGENDA FIJA:
1. Revisión hitos semana anterior (15 min)
2. Bloqueos y dependencias (15 min)
3. Prioridades semana próxima (20 min)
4. Feedback institucional nuevo (10 min)

DOCUMENTO: Acta reunión en /docs/actas/YYYY-MM-DD.md
```

### 10.2. Checklist Semanal

```markdown
## Semana [N] - [Fecha]

### Técnico
- [ ] Hitos completados: [lista]
- [ ] Código pusheado y revisado
- [ ] Tests pasando
- [ ] Documentación actualizada
- [ ] Bloqueos: [describir]

### Institucional
- [ ] Contactos realizados: [N]
- [ ] Reuniones: [N]
- [ ] Feedback recibido: [resumen]
- [ ] Próximos pasos: [lista]

### Decisiones Tomadas
- [Registrar decisiones importantes]

### Riesgos Identificados
- [Nuevos riesgos o cambios]
```

### 10.3. Herramientas de Gestión

```yaml
Código: GitHub (proyecto público/privado)
Tareas: GitHub Projects (kanban)
Documentación: MkDocs en repo
Comunicación: [Definir: Slack, Telegram, Email]
Almacenamiento: Google Drive / Nextcloud
CRM Contactos: Google Sheets / Notion
```

---

## 11. REGISTRO DE DECISIONES

### ADR-001: Licencia EUPL 1.2
**Fecha:** 2025-10-19  
**Contexto:** Elegir licencia open source  
**Decisión:** EUPL 1.2 (European Union Public Licence)  
**Rationale:** 
- Copyleft fuerte (como AGPL)
- Compatible con legislación UE
- Multilingüe (versiones oficiales en euskera)
- Adoptada por administraciones públicas europeas

---

### ADR-002: MapLibre vs Mapbox
**Fecha:** 2025-10-19  
**Contexto:** Librería visualización mapas  
**Decisión:** MapLibre GL JS  
**Rationale:**
- Open source (fork Mapbox pre-licencia restrictiva)
- Sin vendor lock-in
- Comunidad activa
- Compatible con vector tiles estándar

---

### ADR-003: GeoServer vs MapServer
**Fecha:** 2025-10-19  
**Contexto:** Servidor mapas backend  
**Decisión:** GeoServer  
**Rationale:**
- GUI administración web
- Mejor soporte WMS/WFS/WCS
- Comunidad más grande
- Integración PostgreSQL/PostGIS sencilla

---

### ADR-004: Vue.js vs React
**Fecha:** 2025-10-19  
**Contexto:** Framework frontend  
**Decisión:** Vue.js 3  
**Rationale:**
- Curva aprendizaje suave
- Excelente soporte i18n nativo
- Documentación en castellano
- Ecosistema maduro para aplicaciones empresariales

---

*[Añadir nuevas decisiones arquitectónicas según surjan]*

---

## 12. CONTACTOS Y NETWORKING

### 12.1. Template Contacto Inicial

```
Asunto: [Colaboración] Herramienta inventario terrenos agrarios

Kaixo [Nombre],

He visto tu perfil/trabajo en [contexto] relacionado con gestión 
territorial/agricultura en [Diputación]. Estoy desarrollando una 
herramienta open source para inventariar terrenos agrarios y forestales 
subutilizados, algo que me comentaron podría ser de interés para 
[departamento].

¿Tendrías 20-30 minutos para una conversación informal? Me gustaría 
entender mejor los retos que afrontáis y mostrarte un prototipo muy inicial.

Eskerrik asko,
[Tu nombre]
[LinkedIn / Email / Teléfono]
```

### 12.2. Tracking Contactos

| Nombre | Institución | Departamento | Primer Contacto | Estado | Próximo Paso | Notas |
|--------|-------------|--------------|-----------------|--------|--------------|-------|
| - | - | - | - | - | - | - |

*(Mantener en Google Sheets o CRM)*

### 12.3. Eventos Objetivo 2025-2026

- **Jornadas Desarrollo Rural** (Diputaciones)
- **Feria NEKAZALTURISMOA** (Turismo rural Euskadi)
- **Congreso Forestal Español** (si hay edición País Vasco)
- **OpenData Euskadi** (eventos Gobierno Vasco)

---

## 13. CRITERIOS DE ÉXITO POR FASE

### Fase 0: Preparación
```
✅ Técnico:
- Repositorio operativo con CI/CD
- Base de datos con parcelas piloto cargadas
- Algoritmo clasificación básico funcionando
- Mapa visualización operativo

✅ Institucional:
- 3+ contactos técnicos identificados
- 1+ conversación informal realizada
- Convocatorias relevantes listadas
- Presentación ejecutiva preparada

❌ Fracaso:
- Imposibilidad acceso datos públicos
- Stack técnico no viable en local
```

### Fase 1: MVP
```
✅ Técnico:
- Clasificación multicriterio >75% precisión
- Interfaz trilingüe completa
- Informes PDF generables
- Tests automatizados funcionando
- Documentación técnica publicada

✅ Institucional:
- 5+ conversaciones con técnicos
- Feedback documentado y priorizado
- Pain points identificados claramente
- 1+ demo presencial realizada

❌ Fracaso:
- Feedback negativo unánime sobre utilidad
- Imposibilidad técnica clasificación automática
```

### Fase 2: Validación
```
✅ Técnico:
- Features críticas implementadas
- Casos de uso documentados
- Memoria técnica completa

✅ Institucional:
- 2+ reuniones nivel decisor
- 2+ cartas apoyo conseguidas
- "Campeón interno" identificado
- Presupuesto validado con técnicos

❌ Fracaso:
- Rechazo total concepto por decisores
- Imposibilidad conseguir cartas apoyo
```

### Fase 3: Financiación
```
✅ Técnico:
- Material audiovisual profesional
- Propuesta técnica personalizada

✅ Institucional:
- 1+ propuesta formal presentada
- 3+ reuniones presentación realizadas
- Feedback oficial recibido
- Plan B definido

❌ Fracaso:
- Rechazo todas convocatorias SIN feedback útil
- Imposibilidad acceso a decisores finales
```

### Fase 4: Implementación
```
✅ Técnico:
- Sistema en producción estable
- Usuarios reales operando
- Código open source publicado
- Bugs críticos <5% reportes

✅ Institucional:
- Contrato firmado / subvención concedida
- Formación usuarios completada
- Caso éxito documentado
- Réplica a otra institución en conversación

❌ Fracaso:
- Abandono uso por parte de técnicos
- Imposibilidad despliegue por restricciones IT
```

---

## 14. PRESUPUESTO ORIENTATIVO

### 14.1. Desarrollo MVP (Fases 0-2)

```
PARTIDA                           | HORAS | €/h  | TOTAL
----------------------------------|-------|------|--------
Desarrollo Backend                | 300   | 50   | 15.000€
Desarrollo Frontend               | 250   | 50   | 12.500€
Algoritmos IA/ML                  | 150   | 60   | 9.000€
Integración Datos Geo             | 100   | 55   | 5.500€
Testing y QA                      | 80    | 45   | 3.600€
Documentación Técnica             | 60    | 45   | 2.700€
Diseño UI/UX                      | 40    | 50   | 2.000€
Gestión Proyecto                  | 60    | 40   | 2.400€
----------------------------------|-------|------|--------
TOTAL DESARROLLO                  |       |      | 52.700€

INFRAESTRUCTURA Y SERVICIOS
----------------------------------|-------|------|--------
Servidor desarrollo/demo (12m)    |       |      | 1.200€
Almacenamiento datos (12m)        |       |      | 600€
Dominio + SSL                     |       |      | 150€
Herramientas CI/CD                |       |      | 0€ (OSS)
----------------------------------|-------|------|--------
TOTAL INFRAESTRUCTURA             |       |      | 1.950€

TOTAL MVP (Fases 0-2)             |       |      | 54.650€
```

### 14.2. Implementación Piloto (Fases 3-4)

```
PARTIDA                           | UNIDAD| €    | TOTAL
----------------------------------|-------|------|--------
Despliegue infraestructura cliente| 40h   | 55   | 2.200€
Carga datos territorio completo   | 60h   | 50   | 3.000€
Integración sistemas existentes   | 80h   | 60   | 4.800€
Formación usuarios (2 sesiones)   | 20h   | 50   | 1.000€
Soporte post-lanzamiento (3 meses)| 60h   | 45   | 2.700€
Documentación específica cliente  | 30h   | 45   | 1.350€
Ajustes y mejoras post-feedback   | 100h  | 50   | 5.000€
----------------------------------|-------|------|--------
TOTAL IMPLEMENTACIÓN              |       |      | 20.050€

INFRAESTRUCTURA CLIENTE (Anual)
----------------------------------|-------|------|--------
Servidor producción               |       |      | 2.400€
Backups y almacenamiento          |       |      | 800€
Monitorización y logs             |       |      | 400€
Mantenimiento y actualizaciones   |       |      | 3.600€
----------------------------------|-------|------|--------
TOTAL INFRAESTRUCTURA ANUAL       |       |      | 7.200€

TOTAL PILOTO (Año 1)              |       |      | 27.250€
```

### 14.3. Resumen Financiero

```
CONCEPTO                          | IMPORTE  | NOTA
----------------------------------|----------|------------------
Inversión Inicial (MVP)           | 54.650€  | Subvención objetivo
Implementación Piloto             | 20.050€  | Contrato servicios
Infraestructura Año 1             | 7.200€   | Contrato mantenimiento
----------------------------------|----------|------------------
TOTAL AÑO 1                       | 81.900€  |

Años sucesivos (estimado)         | ~15.000€/año | Soporte + mejoras
```

**Nota:** Presupuesto ajustable según convocatoria. Incluir margen 15-20% para imprevistos.

---

## 15. RIESGOS Y MITIGACIÓN

### 15.1. Matriz de Riesgos

| ID | Riesgo | Probabilidad | Impacto | Mitigación |
|----|--------|--------------|---------|------------|
| R01 | Datos públicos inaccesibles o baja calidad | Media | Alto | Múltiples fuentes, algoritmos limpieza, validación manual muestra |
| R02 | Resistencia adopción por técnicos | Media | Alto | Validación temprana, involucrar en diseño, formación intensiva |
| R03 | Plazos convocatorias no alineados | Alta | Medio | Paralelizar varias convocatorias, plan B autofinanciado |
| R04 | Cambios políticos/presupuestarios | Media | Alto | Código open source (supervivencia proyecto), múltiples clientes potenciales |
| R05 | Complejidad técnica subestimada | Media | Medio | MVP incremental, revisión arquitectura continua, buffer 20% horas |
| R06 | Competencia soluciones privadas | Baja | Medio | Enfatizar transparencia, soberanía datos, coste total propiedad |
| R07 | Restricciones IT corporativas | Alta | Alto | Diseño portable, múltiples opciones despliegue, documentación compliance |
| R08 | Falta de conocimiento dominio | Media | Medio | Consulta expertos agrarios/forestales, literatura científica, validación campo |

### 15.2. Plan Contingencia por Fase

**Si Fase 0 falla:**
- Reducir alcance municipio piloto
- Buscar datos alternativos (OSM, voluntarios)
- Replantear stack técnico si bloqueo fundamental

**Si Fase 1 falla:**
- Pivotar a herramienta más simple (dashboard estático)
- Buscar co-desarrollador técnico
- Explorar financiación para consultoría externa puntual

**Si Fase 2-3 fallan (financiación):**
- Modelo freemium: versión básica gratuita, avanzada pago
- Ofrecer implementación low-cost piloto (5-10k€)
- Buscar cliente privado (cooperativas agrarias, gestoras forestales)
- Crowdfunding comunidad desarrollo rural

**Si Fase 4 falla (adopción):**
- Analizar causas: técnicas vs organizacionales
- Ofrecer soporte extendido gratuito
- Documentar lecciones aprendidas
- Publicar igualmente código para comunidad

---

## 16. COMUNICACIÓN Y MARCA

### 16.1. Naming Proyecto

**Opciones (pendiente decisión):**
- **LurMap** (lur=tierra en euskera + map)
- **EkoLur** (ekosistema + lur)
- **AgriScan Euskadi**
- **TerraTrack**
- **[TU PROPUESTA]**

**Criterios selección:**
- Memorable
- Relación con territorio vasco
- Fácil pronunciación 3 idiomas
- Dominio .eus disponible

### 16.2. Identidad Visual

```
COLORES (propuesta):
- Primario: Verde bosque (#2D5016)
- Secundario: Tierra ocre (#8B4513)
- Acento: Azul euskera (#0051A5)
- Neutro: Gris piedra (#78716C)

TIPOGRAFÍA:
- Títulos: Inter / Montserrat (sans-serif moderna)
- Texto: Open Sans / System UI (legibilidad)
- Código: Fira Code (monospace)

LOGO:
- Icono: Abstracción parcela + montaña
- Versiones: Color, B/N, favicon
- Formatos: SVG, PNG (varias resoluciones)
```

### 16.3. Canales Comunicación

```yaml
Oficial:
  - Web proyecto: lurmap.eus (ejemplo)
  - Email: info@lurmap.eus
  - GitHub: github.com/[organización]/lurmap

Social (opcional):
  - LinkedIn: Página empresa
  - Twitter/X: @lurmap_eus
  - Mastodon: @lurmap@mas.to (comunidad open source)

Documentación:
  - Docs técnicos: docs.lurmap.eus (MkDocs)
  - Blog: blog.lurmap.eus (casos uso, tutoriales)
  - YouTube: Videos tutoriales y demos
```

---

## 17. MÉTRICAS Y KPIs

### 17.1. KPIs Técnicos

```yaml
Desarrollo:
  - Cobertura tests: >85%
  - Tiempo build CI/CD: <5 min
  - Velocidad: 10 story points/semana (ajustar)
  
Rendimiento:
  - Tiempo clasificación 1000 parcelas: <24h
  - Tiempo carga mapa (1000 parcelas): <3s
  - Disponibilidad sistema: >99.5%
  
Calidad Datos:
  - Precisión clasificación: >85%
  - Parcelas sin errores geométricos: >98%
  - Completitud datos: >90%
```

### 17.2. KPIs Institucionales

```yaml
Validación:
  - Conversaciones técnicos: 5+ (Fase 1)
  - NPS técnicos contactados: >7/10
  - Reuniones decisores: 2+ (Fase 2)
  
Financiación:
  - Propuestas presentadas: 1+ (Fase 3)
  - Tasa conversión reunión->carta apoyo: >40%
  - Tiempo medio respuesta convocatoria: seguimiento

Adopción:
  - Usuarios activos mensuales: 5+ (Fase 4)
  - Parcelas analizadas acumuladas: 10.000+
  - Informes generados/mes: 20+
  - Tasa retención usuarios: >70% (3 meses)
```

### 17.3. Dashboard Seguimiento

```markdown
## Semana [N] - Snapshot

### Técnico
- ✅ Commits: [N]
- ✅ Issues cerrados: [N]
- ✅ Tests pasando: [%]
- ⚠️ Deuda técnica: [story points]

### Institucional
- ✅ Contactos activos: [N]
- ✅ Reuniones realizadas: [N]
- ✅ Pipeline ventas: [N en cada fase]
- 📈 Progreso financiación: [%]

### Riesgos Activos
- [Lista riesgos materializados o inminentes]
```

---

## 18. HOJA DE RUTA POST-MVP

### 18.1. Roadmap Funcional (v2.0+)

**Prioridad Alta (6-12 meses post-MVP):**
- [ ] Integración SIGPAC completa
- [ ] Análisis predictivo tendencias (ML avanzado)
- [ ] API pública para terceros (rate-limited)
- [ ] App móvil progresiva (PWA)
- [ ] Sistema colaborativo (anotaciones usuarios)

**Prioridad Media (12-24 meses):**
- [ ] Módulo planificación intervenciones
- [ ] Integración imágenes drones
- [ ] Marketplace datos/servicios
- [ ] Alertas automáticas (cambios uso suelo)
- [ ] Comparativas territoriales (benchmarking)

**Prioridad Baja (Backlog):**
- [ ] Realidad aumentada (AR) campo
- [ ] Blockchain trazabilidad actuaciones
- [ ] Gemelo digital territorio
- [ ] Integración IoT sensores campo

### 18.2. Escalado Geográfico

```
FASE 1 (Año 1-2):
  ✓ Euskadi: 3 diputaciones

FASE 2 (Año 2-3):
  → Navarra: Gobierno Foral
  → La Rioja: Gobierno autonómico
  → Castilla y León: Diputaciones rurales (Burgos, Soria)

FASE 3 (Año 3-5):
  → Galicia: Xunta (monte vecinal común)
  → Asturias: Principado
  → Cantabria: Gobierno autonómico
  → Castilla-La Mancha: Diputaciones

FASE 4 (Año 5+):
  → Expansión internacional: Portugal, Francia (Aquitania)
  → Adaptación otros contextos: LatAm, África (colaboración ONGs)
```

### 18.3. Modelo Negocio Sostenible

```yaml
Ingresos Recurrentes:
  - Soporte y mantenimiento: 6.000-15.000€/año/cliente
  - Formación avanzada: 2.000€/sesión
  - Consultoría personalizada: 70€/h
  - Desarrollo features específicas: proyecto

Ingresos Eventuales:
  - Nuevas implementaciones: 15.000-30.000€/cliente
  - Migraciones/integraciones: 5.000-15.000€
  - Auditorías técnicas: 3.000-8.000€

Costes Estructura:
  - Desarrollo (1 FTE): ~45.000€/año
  - Infraestructura: ~5.000€/año
  - Marketing/comercial: ~10.000€/año
  - Administración: ~8.000€/año
  
Punto equilibrio: 4-5 clientes con soporte anual
```

---

## 19. RECURSOS Y BIBLIOGRAFÍA

### 19.1. Documentación Técnica Clave

**GIS y Teledetección:**
- [QGIS Documentation](https://docs.qgis.org/)
- [PostGIS Reference](https://postgis.net/docs/)
- [Sentinel-2 User Handbook](https://sentinel.esa.int/documents/)
- [GDAL/OGR Cookbook](https://pcjericks.github.io/py-gdalogr-cookbook/)

**Frameworks:**
- [FastAPI Docs](https://fastapi.tiangolo.com/)
- [Vue.js Guide](https://vuejs.org/guide/)
- [MapLibre GL JS](https://maplibre.org/maplibre-gl-js-docs/)

**Machine Learning:**
- [Scikit-learn User Guide](https://scikit-learn.org/stable/user_guide.html)
- [Remote Sensing for Agriculture (Papers)](https://www.mdpi.com/journal/remotesensing/special_issues/RS_agriculture)

### 19.2. Datos Abiertos España/Euskadi

```yaml
Catastro:
  - API REST: https://ovc.catastro.meh.es/
  - WFS Inspire: https://www.catastro.minhap.es/webinspire/

Satélite:
  - Copernicus Open Access Hub: https://scihub.copernicus.eu/
  - USGS Earth Explorer: https://earthexplorer.usgs.gov/

LiDAR:
  - CNIG (España): https://centrodedescargas.cnig.es/
  - PNOA: https://pnoa.ign.es/

Cartografía:
  - GeoEuskadi: https://www.geo.euskadi.eus/
  - IDEE: https://www.idee.es/

Agricultura:
  - SIGPAC: https://www.mapa.gob.es/es/agricultura/temas/sistema-de-informacion-geografica-de-parcelas-agricolas-sigpac-/
```

### 19.3. Comunidades y Redes

```yaml
Técnicas:
  - OSGeo: https://www.osgeo.org/
  - GeoPython: https://geopython.github.io/
  - r/gis (Reddit): https://reddit.com/r/gis

Institucionales:
  - REDIAM (Andalucía - referencia): https://www.juntadeandalucia.es/medioambiente/rediam
  - ECOFOR (Red Cooperación Forestal): https://ecofor.es/

Open Source:
  - Open Source Ecology: https://www.opensourceecology.org/
  - FarmOS: https://farmos.org/ (inspiración)
```

### 19.4. Legislación y Normativa

```yaml
Datos Espaciales:
  - Directiva INSPIRE (2007/2/CE)
  - Ley IDEE 14/2010

Datos Abiertos:
  - Ley 37/2007 (Reutilización información sector público)
  - Ley 19/2013 (Transparencia)

Propiedad Intelectual:
  - Real Decreto Legislativo 1/1996 (Propiedad Intelectual)
  - Guía EUPL Comisión Europea

Protección Datos:
  - RGPD (UE) 2016/679
  - LOPDGDD (España) 3/2018
```

---

## 20. GLOSARIO TÉCNICO TRILINGÜE

| Euskera | Castellano | English | Definición |
|---------|------------|---------|------------|
| Lursaila | Parcela | Plot | Unidad mínima de territorio catastral |
| Utzita | Abandonado | Abandoned | Terreno sin actividad productiva >2 años |
| NDVI indizea | Índice NDVI | NDVI Index | Normalized Difference Vegetation Index |
| Malda | Pendiente | Slope | Inclinación del terreno (%) |
| Nekazaritza lurra | Suelo agrícola | Agricultural land | Tierra destinada a cultivos |
| Baso lurra | Suelo forestal | Forest land | Tierra con cobertura arbórea |
| Sailkapena | Clasificación | Classification | Asignación categoría según criterios |
| Geolokalizazioa | Geolocalización | Geolocation | Posicionamiento geográfico preciso |
| Urruneko sentsorea | Teledetección | Remote sensing | Observación sin contacto físico |
| Katastro erreferentzia | Referencia catastral | Cadastral reference | Código único parcela catastro |

*(Expandir según necesidad proyecto - objetivo 200+ términos)*

---

## 21. ANEXOS

### Anexo A: Estructura Repositorio

```
lurmap/
├── backend/
│   ├── app/
│   │   ├── api/
│   │   ├── core/
│   │   ├── models/
│   │   ├── services/
│   │   └── utils/
│   ├── alembic/
│   ├── tests/
│   ├── Dockerfile
│   └── requirements.txt
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   ├── views/
│   │   ├── stores/
│   │   ├── locales/ (i18n)
│   │   └── assets/
│   ├── public/
│   ├── Dockerfile
│   └── package.json
├── scripts/
│   ├── data_download/
│   ├── processing/
│   └── deployment/
├── docs/
│   ├── technical/
│   ├── user_guide/
│   ├── actas/
│   └── mkdocs.yml
├── docker-compose.yml
├── .github/workflows/
├── LICENSE
└── README.md
```

### Anexo B: Template Issue GitHub

```markdown
## Tipo
- [ ] Bug
- [ ] Feature
- [ ] Mejora
- [ ] Documentación

## Descripción
[Descripción clara y concisa]

## Contexto
[Por qué es necesario / Problema que resuelve]

## Criterios de Aceptación
- [ ] Criterio 1
- [ ] Criterio 2

## Tareas Técnicas
- [ ] Tarea 1
- [ ] Tarea 2

## Estimación
[Story points o horas]

## Prioridad
- [ ] Crítica
- [ ] Alta
- [ ] Media
- [ ] Baja
```

### Anexo C: Checklist Pre-Demo

```markdown
## 24h antes
- [ ] Datos demo actualizados
- [ ] Backend corriendo sin errores
- [ ] Frontend build producción OK
- [ ] Tests pasando (100%)
- [ ] Demo script ensayado

## 1h antes
- [ ] Conexión internet verificada
- [ ] Navegador caché limpiada
- [ ] Plan B (video grabado) preparado
- [ ] Batería dispositivos cargada
- [ ] Material impreso (si aplica)

## Durante demo
- [ ] Inicio: contexto problema (2 min)
- [ ] Demo viva: funcionalidad clave (5 min)
- [ ] Q&A: respuestas preparadas
- [ ] Cierre: próximos pasos claros
```

---

## 22. CONTROL DE VERSIONES DOCUMENTO

| Versión | Fecha | Cambios | Autor |
|---------|-------|---------|-------|
| 1.0 | 2025-10-19 | Creación documento inicial completo | [Nombre] |
| | | | |
| | | | |

---

## 23. NOTAS FINALES

### 23.1. Filosofía del Proyecto

```
"Código abierto no es caridad, es estrategia.
 Euskera no es requisito, es ventaja competitiva.
 IA local no es paranoia, es soberanía.
 Datos públicos no son gratis, son nuestra responsabilidad."
```

### 23.2. Principios Operativos

1. **Iteración sobre perfección:** MVP funcional > vaporware completo
2. **Usuarios sobre features:** Resolver pain points reales, no inventados
3. **Documentación como código:** Si no está documentado, no existe
4. **Transparencia radical:** Fracasos públicos, aprendizajes compartidos
5. **Comunidad sobre cliente:** Sostenibilidad a largo plazo

### 23.3. Cuando las Cosas se Pongan Difíciles

```
Recordar:
- Has validado que el problema existe
- Tienes las habilidades técnicas necesarias
- El proyecto aporta valor social real
- Open source permite pivotes sin perder inversión
- La red de contactos crece incluso si un proyecto falla

Preguntar:
- ¿Estamos resolviendo el problema correcto?
- ¿Qué podemos aprender de este bloqueo?
- ¿Hay un camino alternativo más simple?
- ¿Necesitamos ayuda externa?
- ¿Es momento de pivotar o perseverar?
```

---

**Este documento vive. Actualízalo cada semana. Compártelo con cada nuevo colaborador. Que sea la fuente de verdad del proyecto.**

**Siguiente revisión programada: [Fecha + 1 semana]**

**Responsable mantenimiento: [Nombre]**

---

*Aupa eta aurrera! / ¡Ánimo y adelante! / Let's build this!* 🌱🗺️