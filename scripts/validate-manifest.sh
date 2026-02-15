#!/bin/bash

# Script to validate manifest schema
echo "Validating sources manifest schema..."

# Run the validation script
node scripts/validate-manifest.js

# Capture the exit code
exit_code=$?

# Exit with the same code as the validation script
exit $exit_code