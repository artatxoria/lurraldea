#!/bin/bash
# =====================================================
# Script de guardado del estado del proyecto Lurraldea
# Autor: [Tu nombre]
# Uso: ./save_state.sh "Mensaje opcional de estado"
# =====================================================

# Variables
TRACK_FILE="proyecto-tracking-json.json"
PLAN_FILE="plan-director-inventario.md"
META_DIR="docs/meta"
META_FILE="$META_DIR/estado_actual.md"
DATE_NOW=$(date '+%Y-%m-%d %H:%M:%S')

# Comprobaciones básicas
if [ ! -f "$TRACK_FILE" ] || [ ! -f "$PLAN_FILE" ]; then
    echo "❌ No se encuentran los archivos base ($TRACK_FILE, $PLAN_FILE)."
    echo "Ejecuta este script desde la raíz del proyecto."
    exit 1
fi

# Crear carpeta meta si no existe
mkdir -p "$META_DIR"

# Determinar fase y tarea actuales a partir del JSON (si jq está disponible)
if command -v jq >/dev/null 2>&1; then
    FASE=$(jq -r '.fase_actual // "Desconocida"' "$TRACK_FILE")
    TAREA=$(jq -r '.tarea_actual // "No especificada"' "$TRACK_FILE")
else
    FASE="No detectada (jq no instalado)"
    TAREA="No detectada (jq no instalado)"
fi

# Mensaje de estado
MENSAJE=${1:-"Guardado automático del estado"}

# Crear snapshot meta
cat > "$META_FILE" <<EOF
# Estado actual del proyecto

- Fecha de actualización: $DATE_NOW
- Fase actual: $FASE
- Tarea/hito actual: $TAREA
- Mensaje: $MENSAJE

Archivos de referencia:
- $TRACK_FILE
- $PLAN_FILE
EOF

# Añadir cambios al repositorio Git
git add "$TRACK_FILE" "$PLAN_FILE" "$META_FILE"
git commit -m "🗂 [Lurraldea] Guardado de estado: $MENSAJE ($DATE_NOW)"
echo "ℹ️ Cambios guardados localmente. Haz 'git push' manualmente cuando quieras sincronizar con GitHub."

echo "✅ Estado guardado correctamente en $META_FILE y enviado a GitHub."
echo "   Fecha: $DATE_NOW"
