#/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/03_case_menu.sh"

test_case "Primero opción" \
  "echo -e \"1\" | $SCRIPT" \
  "*" \
  0

test_case "Segunda opción" \
  "echo -e \"2\" | $SCRIPT" \
  "*" \
  0

test_case "Tercera opción" \
  "echo -e \"3\" | $SCRIPT" \
  "Has salido del script" \
  1

test_case "Opción no válida" \
  "echo -e \"7\" | $SCRIPT" \
  "Opción no válida"
  0

summary || exit 1
