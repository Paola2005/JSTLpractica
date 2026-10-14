#!/bin/bash
# Carga los scripts SQL de db/ en orden contra MySQL (local o add-on de Clever Cloud).
# Uso:
#   MYSQL_ADDON_HOST=... MYSQL_ADDON_PORT=... MYSQL_ADDON_DB=... \
#   MYSQL_ADDON_USER=... MYSQL_ADDON_PASSWORD=... bash db/cargar_db.sh
# En Clever Cloud las variables MYSQL_ADDON_* ya vienen inyectadas (service link-addon).
set -euo pipefail

HOST="${MYSQL_ADDON_HOST:-localhost}"
PORT="${MYSQL_ADDON_PORT:-3306}"
DB="${MYSQL_ADDON_DB:-empleados}"
USER="${MYSQL_ADDON_USER:-root}"
PASS="${MYSQL_ADDON_PASSWORD:-}"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

MYSQL_ARGS=(-h"$HOST" -P"$PORT" -u"$USER")
if [ -n "$PASS" ]; then
  MYSQL_ARGS+=(-p"$PASS")
fi

echo "Cargando SQL en $HOST:$PORT/$DB ..."
for f in "$SCRIPT_DIR"/*.sql; do
  echo " -> $f"
  mysql "${MYSQL_ARGS[@]}" "$DB" < "$f"
done
echo "OK: base cargada."
