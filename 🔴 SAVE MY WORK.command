#!/bin/bash
# ==============================================================
# 🔴 SAVE MY WORK — double-click this when you're done working
# to upload everything to GitHub so your other computer can
# see the changes.
#
# What this does in plain English:
#   1. Goes into this project folder
#   2. Finds any changes you made
#   3. Saves them with a timestamp ("Saved work from MacBook")
#   4. Uploads them to GitHub (git push)
#   5. Shows you success or failure
#
# If it says "nothing to commit" — you didn't change anything.
# If it says "pushed" — your work is safely in the cloud.
# If it says "error" — STOP, ask Claude for help before closing.
# ==============================================================

cd "$(dirname "$0")"

# Auto-detect the project name from the current folder so this
# same script works in any project without editing.
PROJECT_NAME=$(basename "$PWD")

echo ""
echo "🔴 SAVE MY WORK — $PROJECT_NAME"
echo "=========================================="
echo ""

# Detect which computer we're on for the commit message
COMPUTER=$(scutil --get ComputerName 2>/dev/null || hostname)
TIMESTAMP=$(date "+%Y-%m-%d %I:%M %p")

echo "Saving any changes you made..."
echo ""

git add -A

if git diff --cached --quiet; then
  echo "=========================================="
  echo "ℹ️  Nothing to save — you didn't change anything"
  echo "    since the last time you saved."
  echo ""
  echo "    (This is normal if Claude already pushed"
  echo "    your changes during the session.)"
  echo "=========================================="
else
  if git commit -m "Save from $COMPUTER — $TIMESTAMP" 2>&1 && git push origin main 2>&1; then
    echo ""
    echo "=========================================="
    echo "✅ SUCCESS — your work is safely on GitHub."
    echo ""
    echo "You can now walk away from this computer."
    echo "Your other computer will see the changes"
    echo "when you double-click 🟢 START WORKING"
    echo "over there."
    echo "=========================================="
  else
    echo ""
    echo "=========================================="
    echo "🚨 SOMETHING WENT WRONG."
    echo ""
    echo "DO NOT close this window. Open Claude Code"
    echo "in this folder and paste this whole window"
    echo "into the chat. Claude will help you fix it."
    echo "=========================================="
    echo ""
    echo "This window will stay open so you can copy"
    echo "the error. Close it manually when done."
    read -r -p "Press ENTER to close..."
    exit 1
  fi
fi

echo ""
echo "This window will close in 15 seconds..."
sleep 15
