# Track My Work

A Flutter-based productivity app to log, track, and reflect on daily work tasks.

## Vision
Help learners and professionals build consistent work habits through simple, reflective task tracking.

## Core Features (Planned)
- User authentication
- Task creation & completion
- Daily/weekly summaries
- Reflection journaling

## Navigation Flow
Login → Home Dashboard → [Add Task / View Task Details] → Weekly Summary

## Tech Stack
- Flutter (Dart)
- Firebase (Auth, Firestore)
- Provider (State Management)
| Login Screen | Home Screen |
# Week 3 Changelog – “Track My Work”

## 📊 Data Integration
- **Program Listing Screen**: Now fetches real program data from `program_data.json`
- **Program Details Screen**: Receives full `Program` object with dynamic tasks
- Data loading handled via `FutureBuilder` with:
  - ✅ Loading indicator (circular progress)
  - ❌ Error handling (retry button)
  - ✅ Empty state fallback

## 📝 New Form: Feedback Submission
- Accessible from app bar (feedback icon)
- Fields:
  - **Email**: Required + valid format (regex validation)
  - **Message**: Min. 10 characters, not empty
- On success: Shows SnackBar and returns to previous screen

## 🛠️ Technical Highlights
- Used `rootBundle` to load local JSON (mock API)
- Created `Program` and `Task` models with `fromJson`
- Implemented reusable `LoadingIndicator` widget
- All navigation and data flow documented in routes

# Track My Work – Excelerate MAD Internship Project

A Flutter productivity app built during my 4-week **Mobile App Engineering Internship** at Excelerate.  
Helps learners and professionals **track, organize, and reflect** on their work programs.

![Track My Work Banner](screenshots/banner.png)

## 🎯 Purpose
- Log and manage work programs (e.g., courses, projects, assignments)
- View task progress and add reflections
- Provide feedback to improve the app

## 🚀 Setup Instructions

1. **Clone the repo**
   ```bash
   git clone https://github.com/yourusername/track-my-work.git
   cd track-my-work
