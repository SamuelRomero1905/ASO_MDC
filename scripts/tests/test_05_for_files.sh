#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/05_for_files.sh"

test_case "Archivo regular" \
  "$SCRIPT" \
  "Archivo:*" \
  0

test_case "Archivo no regular" \
  "$SCRIPT" \
  "Elemento *" \
  0

summary || exit 1
