#!/usr/bin/env bash

# Read the tool input JSON from stdin
INPUT=$(cat)

# Extract the command from the tool input
COMMAND=$(echo "$INPUT" | python3 -c "import sys, json; data = json.load(sys.stdin); print(data.get('tool_input', {}).get('command', ''))" 2>/dev/null)

# Check if this is a dbt command targeting prod
if echo "$COMMAND" | grep -q "dbt" && echo "$COMMAND" | grep -q "\-\-target prod"; then
  echo '{"decision": "block", "reason": "Direct production dbt runs are not allowed. Use the CI/CD pipeline instead."}'
  exit 2
fi

exit 0
