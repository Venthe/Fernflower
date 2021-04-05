#!/usr/bin/env bash

set -o errexit
set -o pipefail


if [[ $@ -lt 1 ]]; then
    java -classpath "/opt/app/java-decompiler.jar" "org.jetbrains.java.decompiler.main.decompiler.ConsoleDecompiler" "${@}" "/data"
else
    JAR_FILE="${1}"
    java -classpath "/opt/app/java-decompiler.jar" "org.jetbrains.java.decompiler.main.decompiler.ConsoleDecompiler" \
        -hdc=0 -dgs=1 -rsy=1 -rbr=1 -lit=1 -nls=1 -mpm=60 \
        "${JAR_FILE}" "/data"
fi
