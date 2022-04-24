#!/usr/bin/env bash

target=$(basename "$0")
echo "Target: ${target}"
execute=$(fdfind "${target}\.sh" -t x "${HOME}/.local/share/JetBrains/Toolbox/apps/" | tail -n 1)
echo "Executing: ${execute} $@"
exec "${execute}" "$@"

