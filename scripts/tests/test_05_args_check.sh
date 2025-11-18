#!/bin/bash
source "scriptS/tests/base_test.sh"
SCRIPT="script/01_basics/05_args_check.sh"

test_case "suma positiva" \º
  "$SCRIPT 7 8" \
  "15" \
  0

test_case "suma con negativos" \
  "$SCRIPT -3 10" \
  "7" \
  0

test_case "faltan argumentos" \
  "$SCRIPT 7" \
  "Uso: *" \
  1

test_case "no numéricos" \
  "$SCRIPT abc 3" \
  "Error: ambos argumentos deben ser numéricos" \
  2

summary || exit 1
