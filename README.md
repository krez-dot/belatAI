# belat

Your own **private, offline AI assistant** — it runs entirely on your computer, with no internet, no accounts, and no data ever leaving your device. Clean, minimal, violet-on-white interface. *private. personal. yours.* ✨

Powered by [llamafile](https://github.com/Mozilla-Ocho/llamafile) + Meta's **Llama 3.1 8B** model, running locally on your CPU.

---

## ✨ What's in this repo

| File | What it is |
|------|------------|
| `belat.html` | The custom chat interface — personality baked in, talks to your local engine |
| `START-AI.bat` | One-click launcher: starts the engine and opens belat |
| `.gitignore` | Keeps the huge engine/model files out of git |

> The **engine** (`llamafile.exe`, ~351 MB) and the **model** (`model.gguf`, ~4.7 GB) are **not** in this repo — GitHub rejects files that big. You download them once (below).

---

## 🛠️ Setup (one time)

1. **Clone or download** this repo to a folder, e.g. `C:\belat`.

2. **Get the engine** — from [llamafile releases](https://github.com/Mozilla-Ocho/llamafile/releases):
   - Download the main `llamafile-x.x.x` file
   - Rename it to exactly **`llamafile.exe`**
   - Put it in the folder

3. **Get the model** — from [bartowski/Meta-Llama-3.1-8B-Instruct-GGUF](https://huggingface.co/bartowski/Meta-Llama-3.1-8B-Instruct-GGUF):
   - Under *Files and versions*, download **`Meta-Llama-3.1-8B-Instruct-Q4_K_M.gguf`** (~4.7 GB)
   - Rename it to exactly **`model.gguf`**
   - Put it in the folder

4. Your folder should now have: `llamafile.exe`, `model.gguf`, `belat.html`, `START-AI.bat`

---

## ▶️ Run it

Double-click **`START-AI.bat`**.

It starts the local engine and opens **belat** in your browser. Keep the black window open while you chat; close it to shut the AI down. First start takes ~20–60 seconds while the model loads into memory.

Fully offline — turn off your WiFi and it still works. ✅

---

## ✨ Features

- Clean sidebar with **new chat** + recent conversations (saved locally in your browser)
- Suggestion cards to get you started
- Live **on device / offline** status indicator
- Conversations never leave your machine

---

## 🎨 Customizing

- **Personality:** edit the `SYSTEM` prompt in `belat.html`.
- **Look:** edit the colors/fonts in the `<style>` section (the violet is `--violet: #6c4ce6`).
- **Port:** the page and `START-AI.bat` both use `8090` — change both if needed.

---

## ⚠️ Notes

- This is for general chat/planning/help. The small model can be wrong or make things up — don't trust it for anything important (medical, legal, etc.).
- Needs a reasonably modern computer (8 GB+ RAM). It uses the host computer's CPU.

---

*Made with ❤️ (and one very unreliable USB stick).*
