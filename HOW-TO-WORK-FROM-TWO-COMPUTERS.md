# 🟢 HOW TO WORK FROM TWO COMPUTERS (laptop + iMac)

**Written for Greg. Plain English. No technical jargon. Read this slowly.**

---

## The big idea in 2 sentences

Your website files live in the cloud on GitHub. When you sit down at
a computer to work, you **download** the latest from the cloud. When
you're done, you **upload** your work back to the cloud. Then the
other computer can see it.

Think of it like Dropbox — except YOU have to press a button to sync.

---

## The two buttons you need to know about

Inside this folder (`pitchkitchen-site`) there are two special files
with emojis in front. They look like this in Finder:

```
🟢 START WORKING.command
🔴 SAVE MY WORK.command
```

**These are not documents. They are buttons. Double-click them like
you would double-click an app.**

Here's what they do:

| File | When to double-click it | What it does |
|---|---|---|
| **🟢 START WORKING** | When you SIT DOWN at a computer | Downloads the latest website files from the cloud so you can work on the newest version |
| **🔴 SAVE MY WORK** | When you FINISH working | Uploads your changes to the cloud so your other computer can see them |

That's it. That's the whole system.

---

## Your daily routine — step by step

### ☀️ Morning (on your laptop, for example)

1. **Open Finder**
2. **Go to the folder** `CC PitchKitchen Website Folder > pitchkitchen-site`
3. **Double-click** `🟢 START WORKING.command`
4. A little black window will pop up showing "Downloading..." then
   "SUCCESS — you're ready to work"
5. The window closes by itself after 15 seconds
6. **Now open Claude Code** in the pitchkitchen-site folder and do your work

### 🌙 End of morning session (before switching to your iMac)

1. In the Claude Code chat, ask Claude: **"Please save my work and push it to GitHub"**
   (Claude will usually do this automatically, but asking makes sure.)
2. OR, to be extra safe: **go to Finder and double-click** `🔴 SAVE MY WORK.command`
3. You'll see "SUCCESS — your work is safely on GitHub"
4. Close your laptop — you're done.

### 🌤️ Afternoon (now on your iMac)

1. **Open Finder on your iMac**
2. **Go to** `CC PitchKitchen Website Folder > pitchkitchen-site`
3. **Double-click** `🟢 START WORKING.command`  ← this pulls the changes you made on the laptop this morning
4. Now open Claude Code and pick up where you left off
5. When you're done, **double-click** `🔴 SAVE MY WORK.command` again

**That's the whole loop.** Pull at the start. Push at the end. You never
touch Terminal, you never type commands, you never think about git.

---

## What if I forget and don't pull?

If you forget to double-click 🟢 START WORKING and start making changes
on an out-of-date copy, the worst case is you end up with a **"merge
conflict"** when you try to save. That just means "two versions of the
same file exist, which one wins?" and it's fixable.

**If you see the words "merge conflict" in a window — don't panic.** Just
open Claude Code and say: **"I have a merge conflict on the PitchKitchen
site, please fix it."** Claude will walk you through it in about 2 minutes.

---

## What if my iMac doesn't have this project YET?

If this is the very first time you're working on the iMac (or any new
computer), you need to do a one-time setup before the buttons exist.
See the other file in this repo called **`SETUP-NEW-COMPUTER.md`** for
the first-time steps. You only do that once per new computer.

---

## "What should I do if X happens?" cheat sheet

| If you see... | It means... | Do this |
|---|---|---|
| "Already up to date" | No changes from the other computer | You're good, start working |
| "Fast-forward" or "files changed" | You downloaded new changes from the other computer | You're good, start working |
| "nothing to commit" | You didn't change anything since last save | No action needed |
| "pushed to main" | Your work is saved to the cloud | You're done, close the computer |
| "merge conflict" | Both computers changed the same file | Don't panic — ask Claude for help |
| "error" (anything else) | Something unexpected | Copy the window content, paste into Claude Code, ask for help |
| The window just vanished | It finished too fast | Probably nothing wrong, but double-click again to be sure |

---

## The "I'm freaking out and don't know what's safe" recovery steps

If you ever lose track and don't know whether your work is saved:

1. Double-click **🔴 SAVE MY WORK**
2. Read what the window says
3. If it says "SUCCESS" or "nothing to save" — you're fine
4. If it says anything else — screenshot the window and ask Claude

**The live website (pitchkitchen.com) cannot be destroyed by anything
you do locally.** It runs from GitHub, not from your laptop. Worst case
ever: we recover from GitHub. You cannot break the live site by
pressing buttons on your laptop.

---

## 🧊 Remember: there are only 2 buttons

- 🟢 **START WORKING** → when you sit down (downloads latest)
- 🔴 **SAVE MY WORK** → when you finish (uploads your changes)

That's it. That's the whole system. Forget everything else.
