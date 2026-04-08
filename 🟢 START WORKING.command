#!/bin/bash
# ==============================================================
# 🟢 START WORKING — double-click this when you sit down at a
# computer (laptop OR iMac) to download the latest changes.
#
# What this does in plain English:
#   1. Goes into this project folder
#   2. Downloads any changes from GitHub (git pull)
#   3. Shows you what happened
#   4. Closes automatically after 10 seconds
#
# If it says "Already up to date" — you're ready to work.
# If it says "files changed" — it downloaded updates from the
# other computer and you're ready to work.
# If it says "error" — STOP, don't work yet, ask Claude for help.
# ==============================================================

cd "$(dirname "$0")"

echo ""
echo "🟢 START WORKING — PitchKitchen website"
echo "=========================================="
echo ""
echo "Downloading the latest changes from GitHub..."
echo ""

if git pull origin main 2>&1; then
  echo ""
  echo "=========================================="
  echo "✅ SUCCESS — you're ready to work."
  echo ""
  echo "Now open Claude Code in this folder and"
  echo "make your changes."
  echo "=========================================="
else
  echo ""
  echo "=========================================="
  echo "🚨 SOMETHING WENT WRONG."
  echo ""
  echo "DO NOT start working yet. Open Claude Code"
  echo "in this folder and paste this whole window"
  echo "into the chat. Claude will help you fix it."
  echo "=========================================="
fi

echo ""
echo "This window will close in 15 seconds..."
sleep 15
