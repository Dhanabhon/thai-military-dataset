# Design Spec - GitHub Pages Demo

This document outlines the design for the interactive demo of the Thai Military Dataset, hosted via GitHub Pages.

## 1. Purpose
To provide a live, interactive showcase of the dataset that allows users to experience the data structure through a modern web interface.

## 2. Approach
We will build a **Single Page Application (SPA)** using:
- **HTML5/Vanilla JavaScript:** For logic and data handling.
- **Tailwind CSS (via CDN):** For modern, responsive styling without a build step.
- **GitHub Pages:** For hosting the static site.

## 3. Features

### 3.1 Smart Search Dropdown
- An autocomplete search bar that filters both **Ranks** and **Corps** datasets in real-time.
- Supports searching by Thai name, English name, and Abbreviations.
- Results displayed in a polished dropdown with branch-specific tags (RTA, RTN, RTAF).

### 3.2 Result Highlighting
- Visual badges to identify the military branch.
- Distinct styling for "Ranks" vs "Corps" results.

### 3.3 Responsive Design
- Mobile-first approach to ensure the demo works on all devices.
- Clean, centered layout optimized for readability.

## 4. Technical Architecture

### 4.1 Data Loading
- The site will fetch `data/json/thai_military_ranks.json` and `data/json/thai_military_corps.json` on load using the `fetch` API.

### 4.2 State Management
- A simple JavaScript object will hold the loaded data and the current search query.
- DOM manipulation will be handled via standard `document.querySelector` and template literals for efficiency and simplicity.

## 5. File Structure
The demo will live in the root directory (or a `docs/` folder if preferred for GitHub Pages configuration) to stay simple:
- `index.html`: Contains the structure, styling (Tailwind), and logic (JS).

## 6. Deployment
- The site will be hosted on GitHub Pages by pointing to the `main` branch.
- URL: `https://<username>.github.io/thai-military-dataset/`

## 7. Success Criteria
- The demo site is accessible via the GitHub Pages URL.
- Search is fast and accurately filters both ranks and corps.
- UI matches the approved mockup.
- No build step required; the site works directly from the repo.
