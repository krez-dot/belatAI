# 🚗 Need A Ride (belatAI)

Your own **private, offline AI chatbot** — it runs entirely on your computer, with no internet, no accounts, and no data ever leaving your machine. It has a custom retro-styled chat page and its own personality: *Need A Ride*, the buddy who shows up at 2am. 😎

Powered by [llamafile](https://github.com/Mozilla-Ocho/llamafile) + Meta's **Llama 3.1 8B** model, running locally on your CPU.

---

## ✨ What's in this repo

| File | What it is |
|------|------------|
| `Need-A-Ride.html` | The custom chat website (the "face") — personality baked in |
| `START-AI.bat` | One-click launcher: starts the engine and opens the page |
| `.gitignore` | Keeps the huge engine/model files out of git |

> The **engine** (`llamafile.exe`, ~351 MB) and the **model** (`model.gguf`, ~4.7 GB) are **not** in this repo — GitHub rejects files that big. You download them once (below).

---

## 🛠️ Setup (one time)

1. **Clone or download** this repo to a folder, e.g. `C:\PocketAI`.

2. **Get the engine** — from [llamafile releases](https://github.com/Mozilla-Ocho/llamafile/releases):
   - Download the main `llamafile-x.x.x` file
   - Rename it to exactly **`llamafile.exe`**
   - Put it in the folder

3. **Get the model** — from [bartowski/Meta-Llama-3.1-8B-Instruct-GGUF](https://huggingface.co/bartowski/Meta-Llama-3.1-8B-Instruct-GGUF):
   - Under *Files and versions*, download **`Meta-Llama-3.1-8B-Instruct-Q4_K_M.gguf`** (~4.7 GB)
   - Rename it to exactly **`model.gguf`**
   - Put it in the folder

4. Your folder should now have: `llamafile.exe`, `model.gguf`, `Need-A-Ride.html`, `START-AI.bat`

---

## ▶️ Run it

Double-click **`START-AI.bat`**.

It starts the local engine and opens your **Need A Ride** chat page in the browser. Keep the black window open while you chat; close it to shut the AI down. First start takes ~20–60 seconds while the model loads into memory.

Fully offline — turn off your WiFi and it still works. ✅

---

## 🎨 Customizing

- **Personality:** edit the `SYSTEM_PROMPT` line in `Need-A-Ride.html`.
- **Look:** edit the colors/fonts in the `<style>` section of the same file.
- **Port:** the page and `START-AI.bat` both use `8090` — change both if needed.

---

## ⚠️ Notes

- This is for fun and general chat/help. The small model can be wrong or make things up — don't trust it for anything important (medical, legal, etc.).
- Needs a reasonably modern computer (8 GB+ RAM). It uses the host computer's CPU, not the USB/drive it sits on.

---

*Made with ❤️ and one very unreliable USB stick.*
