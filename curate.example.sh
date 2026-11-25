#!/bin/sh
# 5:30 AM curation step. This repo does not ship a curation agent: plug in your own.
#
# Contract:
#   input : $DATA_DIR/interests.json   (written by kobo-interests.py)
#   output: lines appended to $DATA_DIR/queue.txt, one article URL per line
#           (queue.txt may also contain "# comment" lines)
#
# Any tool works: a script that calls an LLM API, a CLI agent, or you by hand.
# Copy this file to curate.sh and replace the body.
DATA_DIR="${DATA_DIR:-$HOME/kobo-articles}"
echo "Read $DATA_DIR/interests.json, pick ~10 recent article URLs, append them to $DATA_DIR/queue.txt" >&2
# Example (needs your own tool):
#   your-llm-cli --prompt-file curation-prompt.txt --input "$DATA_DIR/interests.json" >> "$DATA_DIR/queue.txt"
exit 0
