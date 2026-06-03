#!/usr/bin/env bash
set -euo pipefail

PROJECT_NAME="${1:-}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: ./dev/scripts/bootstrap_project.sh <ProjectName>"
  exit 1
fi

mkdir -p "$PROJECT_NAME"/{app,reference,outputs}
mkdir -p "$PROJECT_NAME"/skills
mkdir -p "$PROJECT_NAME"/dev/{docs,notes/chat-log,scripts,temp}

cp "$TEMPLATE_ROOT/AGENTS.md" "$PROJECT_NAME/AGENTS.md"
cp "$TEMPLATE_ROOT/README.md" "$PROJECT_NAME/README.md"
cp "$TEMPLATE_ROOT/dev/current-state.md" "$PROJECT_NAME/dev/current-state.md"
cp -R "$TEMPLATE_ROOT/dev/docs/." "$PROJECT_NAME/dev/docs/"
cp -R "$TEMPLATE_ROOT/dev/notes/." "$PROJECT_NAME/dev/notes/"
cp -R "$TEMPLATE_ROOT/dev/scripts/." "$PROJECT_NAME/dev/scripts/"

: > "$PROJECT_NAME/app/.gitkeep"
: > "$PROJECT_NAME/skills/.gitkeep"
: > "$PROJECT_NAME/reference/.gitkeep"
: > "$PROJECT_NAME/outputs/.gitkeep"
: > "$PROJECT_NAME/dev/temp/.gitkeep"

echo "Created project: $PROJECT_NAME"
echo "Next: edit $PROJECT_NAME/README.md and $PROJECT_NAME/AGENTS.md"
