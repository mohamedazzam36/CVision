## 📄 CVision 🤖📊

AI-powered App that helps students and graduates analyze their CVs, identify missing skills, and generate personalized learning roadmaps to qualify for their dream jobs.

## 📱 What is CVision?

CVision is an AI-powered mobile application built to support students and fresh graduates in their career journey. With just a CV upload, the app analyzes skills, highlights strengths and weaknesses, and suggests tailored roadmaps with resources to bridge the skill gaps.

# ✨ Key Features:

📤 Upload your CV (PDF/Doc).

🔍 AI-powered skill extraction and analysis.

📊 Visualized skill percentages (strengths vs. gaps).

🗂️ Personalized roadmap with topics and study resources.

✅ Track progress (completed / not completed).

🔔 Notifications & reminders for learning milestones.

# 🛠️ Technologies 

1. Flutter (Dart) → For building cross-platform mobile apps.

2. Firebase → Authentication, Cloud Firestore (for storing user progress), and Cloud Storage (for CV uploads).

3. REST API / GraphQL → For connecting to backend services.

4. AI/ML Models (NLP + Classification) → For CV parsing, skill extraction, and gap analysis.

5. FastAPI / Node.js (suggested backend framework) → For handling requests and integrating AI.

6. PostgreSQL / MongoDB → To store skills database, roadmaps, and resources.

7. Provider / Riverpod / Bloc → For state management in Flutter.

8. Responsive UI → Adaptive layouts and smooth design across different screen sizes and orientations.

## 🧠 About the AI Model

The core of CVision lies in its Natural Language Processing (NLP) model that extracts and analyzes user skills from CVs.
It compares them with industry-required skills for job roles and generates personalized suggestions.

Model Details:

Dataset: Curated CVs, job postings, and skills repositories.

Architecture: NLP-based model (Transformers + Embedding techniques).

Prediction:

- Extracts skills from uploaded CVs.

- Matches them against job requirements.

- Outputs a skill percentage match and missing skills.

- Generates a roadmap with recommended resources.

## 🌍 User Roles

👤 Students / Graduates

- Upload CVs

- View analyzed skills and percentages

- Access roadmap with resources

- Track progress

🏢 (Future Scope: Companies / Recruiters)

- Post job requirements

- Match candidate profiles

- Provide skill benchmarks

## ⚙️ Tech Stack

- Mobile Application: Flutter (cross-platform for iOS & Android)

- Backend: Node.js / Django REST API

- Database: Firebase / PostgreSQL / MongoDB

- Authentication: Firebase Authentication (Email, Google, Apple, Facebook login)

- AI Integration: Pre-trained NLP models + fine-tuned Transformers

- UI/UX: Responsive UI (mobile-first, adaptive layouts)

- Hosting: Cloud (AWS / Firebase / Azure)

## 📸 Screens

<img width="1157" height="605" alt="image" src="https://github.com/user-attachments/assets/bbaa2520-b60f-4885-96c7-72ce4ce3809e" />


## 🎥 Demo Video

https://drive.google.com/file/d/1xCukPkzIo5bo2VD8VqL_WR9lMjDn2czB/view?usp=sharing

## ⚡ Quick Start Guide

# Prerequisites

Flutter SDK

Dart SDK

Python 3.8+ (for AI API server)

pip (Python package installer)

## Clone & Run the Flutter App
# Clone the repository
git clone https://github.com/mohamedazzam36/CVision.git

cd CVision

# Get Flutter packages
flutter pub get

# Run the app
flutter run
