#!/usr/bin/env bash
set -euo pipefail

PROJECT_NAME="${1:-}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: ./dev/scripts/bootstrap_project.sh <ProjectName>"
  exit 1
fi

mkdir -p "$PROJECT_NAME"/skills/{active,drafts,examples,test-fixtures,archive}
mkdir -p "$PROJECT_NAME"/app/{src,prototypes,tests,archive}
mkdir -p "$PROJECT_NAME"/reference/{requirements,source-materials,research,examples,archive}
mkdir -p "$PROJECT_NAME"/outputs/{final,drafts,samples,test-results,archive}
mkdir -p "$PROJECT_NAME"/dev/{docs,notes/chat-log,scripts,temp}
mkdir -p "$PROJECT_NAME"/dev/temp/{scratch,drafts,test-runs}

cp "$TEMPLATE_ROOT/AGENTS.md" "$PROJECT_NAME/AGENTS.md"
cp "$TEMPLATE_ROOT/README.md" "$PROJECT_NAME/README.md"
cp "$TEMPLATE_ROOT/skills/README.md" "$PROJECT_NAME/skills/README.md"
cp -R "$TEMPLATE_ROOT/skills/active/." "$PROJECT_NAME/skills/active/"
cp "$TEMPLATE_ROOT/app/README.md" "$PROJECT_NAME/app/README.md"
cp "$TEMPLATE_ROOT/reference/README.md" "$PROJECT_NAME/reference/README.md"
cp "$TEMPLATE_ROOT/outputs/README.md" "$PROJECT_NAME/outputs/README.md"
cp "$TEMPLATE_ROOT/dev/current-state.md" "$PROJECT_NAME/dev/current-state.md"
cp -R "$TEMPLATE_ROOT/dev/docs/." "$PROJECT_NAME/dev/docs/"
cp -R "$TEMPLATE_ROOT/dev/notes/." "$PROJECT_NAME/dev/notes/"
cp -R "$TEMPLATE_ROOT/dev/scripts/." "$PROJECT_NAME/dev/scripts/"
cp "$TEMPLATE_ROOT/dev/temp/README.md" "$PROJECT_NAME/dev/temp/README.md"

: > "$PROJECT_NAME/app/.gitkeep"
: > "$PROJECT_NAME/skills/.gitkeep"
: > "$PROJECT_NAME/reference/.gitkeep"
: > "$PROJECT_NAME/outputs/.gitkeep"
: > "$PROJECT_NAME/dev/temp/.gitkeep"

find "$PROJECT_NAME/skills" "$PROJECT_NAME/app" "$PROJECT_NAME/reference" "$PROJECT_NAME/outputs" "$PROJECT_NAME/dev/temp" -type d -exec sh -c ': > "$1/.gitkeep"' _ {} \;

echo "Created project: $PROJECT_NAME"
echo "Next: edit $PROJECT_NAME/README.md and $PROJECT_NAME/AGENTS.md"
