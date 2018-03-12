#!/bin/bash
# redirecting all output to a file

echo "faith"
echo "exec"
echo "dic"

exec 1>testt
echo "gg"
echo "kk"
exec 2>>testout
echo "tt" >&2
