#!/bin/bash

# ==========================================
# ELEKTRO Build Script
# ==========================================

echo "========================================="
echo "      ELEKTRO - Build Script"
echo "========================================="
echo

# Limpiar compilación anterior
echo "[1/6] Cleaning previous build..."
rm -rf out
rm -f Elektro.jar
mkdir out

# Compilar
echo "[2/6] Compiling source code..."
javac -encoding UTF-8 -d out $(find src -name "*.java")

if [ $? -ne 0 ]; then
    echo
    echo "❌ Compilation failed."
    exit 1
fi

# Copiar recursos
echo "[3/6] Copying resources..."
cp -r res/* out/

# Crear MANIFEST
echo "[4/6] Creating manifest..."
cat > manifest.txt << EOF
Main-Class: game.Main

EOF

# Crear JAR
echo "[5/6] Creating Elektro.jar..."
jar cfm Elektro.jar manifest.txt -C out .

if [ $? -ne 0 ]; then
    echo
    echo "❌ Failed to create JAR."
    exit 1
fi

# Limpiar archivos temporales
rm manifest.txt

echo
echo "✅ Build completed successfully!"
echo
echo "Generated file:"
echo "    Elektro.jar"
echo
echo "Run with:"
echo "    java -jar Elektro.jar"
echo