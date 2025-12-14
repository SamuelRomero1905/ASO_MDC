#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="script/02_flow_control/02_elif.sh"

test_case "Suspenso" \
  "echo -e \"1\" | $SCRIPT" \
  "Suspenso" \
  0

test_case "Aprobado" \
  "echo -e \"5\" | $SCRIPT" \
  "Aprobado" \
  0

test_case "Bien" \
  "echo -e \"6\" | $SCRIPT" \
  "Bien" \
  0

test_case "Notable" \
  "echo -e \"7\" | $SCRIPT" \
  "Notable" \
  0

test_case "Sobresaliente" \
  "echo -e \"9\" | $SCRIPT" \
  "Sobresaliente" \
  0

test_case "Nota no válida" \
  "echo -e \"20\" | $SCRIPT" \
  "Nota no válida" \
  0

summary || exit
