#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/01_basics/03_io.sh"

test_case "nombre y edad válida" \
  "echo -e \"Samuel\n21\" | $SCRIPT" \
  "*Hola Samuel, te quedan * años para cumplir 100.*" \
  0

test_case "edad vacía" \
  "echo -e \"Samuel\n\" | $SCRIPT" \
  "*Error: debes introducir una edad numérica.*" \
  1

test_case "edad no numérica" \
  "echo -e \"Samuel\nabc\" | $SCRIPT" \
  "*Error: debes introducir una edad numérica.*" \
  1

test_case "edad mixta" \
  "echo -e \"Samuel\n21abc\" | $SCRIPT" \
  "*Error: debes introducir una edad numérica.*" \
  1

summary || exit 1
