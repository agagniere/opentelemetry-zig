#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="${SCRIPT_DIR}/.."

# freeze the spec version and generator version to make generation reproducible
SPEC_VERSION=1.36.0
WEAVER_VERSION=v0.16.1

cd "$PROJECT_DIR"

rm -rf semantic-conventions || true
mkdir semantic-conventions
cd semantic-conventions

git init
git remote add origin https://github.com/open-telemetry/semantic-conventions.git
git fetch origin "v$SPEC_VERSION"
git reset --hard FETCH_HEAD
cd "$PROJECT_DIR"

SED=(sed -i)
if [[ "$(uname)" = "Darwin" ]]; then
  SED=(sed -i "")
fi

# Keep `SCHEMA_URL` key in sync with spec version
"${SED[@]}" "s/\(opentelemetry.io\/schemas\/\)[^\"]*\"/\1$SPEC_VERSION\"/" scripts/templates/registry/zig/weaver.yaml

docker run --rm \
  --mount type=bind,source=$PROJECT_DIR/semantic-conventions/model,target=/home/weaver/source,readonly \
  --mount type=bind,source=$PROJECT_DIR/scripts/templates,target=/home/weaver/templates,readonly \
  --mount type=bind,source=$PROJECT_DIR/src,target=/home/weaver/target \
  otel/weaver:$WEAVER_VERSION \
  registry generate \
  --registry=/home/weaver/source \
  --templates=/home/weaver/templates \
  zig \
  /home/weaver/target/

# handle doc generation failures - remove trailing [2] from doc comments
"${SED[@]}" 's/\[2\]\.$//' src/attribute.zig

# handle escaping ranges like [0,n] / [0.0, ...] in descriptions/notes which will cause broken links
# unescape any mistakenly escaped ranges which actually contained a link
expression='
  s/\[([a-zA-Z0-9\.\s]+,[a-zA-Z0-9\.\s]+)\]/\\[\1\\]/g
  s/\\\[([^\]]+)\]\(([^)]+)\)/[\1](\2)/g
'

"${SED[@]}" -E "${expression}" src/metric.zig
"${SED[@]}" -E "${expression}" src/attribute.zig

# Fix unclosed HTML tag warnings for <key> in doc comments.
# We replace <key> with Markdown code formatting `key` to prevent the error.
"${SED[@]}" 's/<key>/`key`/g' src/attribute.zig

zig fmt .

echo "Zig semantic conventions generated successfully!"
