#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

LIB_CP="lib/objectdb.jar:lib/javax.persistence-api-2.2.jar"
TARGET_DIR="target/classes"

mkdir -p "$TARGET_DIR"
javac -d "$TARGET_DIR" -cp "$LIB_CP" src/Main.java src/Pessoa.java
java -cp "$TARGET_DIR:$LIB_CP" Main
