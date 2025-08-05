# GK Quiz - Indian Places

A beautiful and interactive Android quiz application designed for Standard I students to learn about famous places and monuments in India.

## Features

🎯 **12 Multiple Choice Questions** about famous Indian places and monuments
🌈 **Kid-friendly UI** with colorful design and encouraging messages
📊 **Progress tracking** with visual progress bar
⭐ **Star rating system** based on performance
🔄 **Question shuffling** for variety in each attempt
✅ **Immediate feedback** with correct/incorrect answer highlighting
🏆 **Performance evaluation** with motivational messages

## Quiz Content

The app includes questions about:
- Mysore Palace - Mysore
- Victoria Memorial - Kolkata
- Gateway of India - Mumbai
- Humayun's Tomb - Delhi
- Charminar - Hyderabad
- Ajanta Caves - Aurangabad
- Statue of Unity - Gujarat
- Rock Garden - Chandigarh
- Konark Sun Temple - Odisha
- Golden Temple - Amritsar
- Jantar Mantar - Jaipur
- Mahakaleshwar Temple - Ujjain

## How to Run

### Prerequisites
- Android Studio Arctic Fox or later
- Android SDK API level 21 or higher
- Kotlin support

### Steps
1. **Clone or Download** this project to your computer
2. **Open Android Studio**
3. **Open Project** and select the "GK apk" folder
4. **Wait for Gradle sync** to complete
5. **Connect your Android device** or **start an emulator**
6. **Click Run button** (green play icon) in Android Studio

### Alternative: Build APK
1. In Android Studio, go to **Build > Build Bundle(s) / APK(s) > Build APK(s)**
2. Once built, find the APK in `app/build/outputs/apk/debug/`
3. Install the APK on any Android device

## App Navigation

1. **Welcome Screen**: Start the quiz
2. **Quiz Screen**: Answer multiple choice questions
3. **Result Screen**: View score and performance with star rating

## Performance Ratings

- 🌟 **1 Star**: Below 60% - "Keep learning! 📚"
- ⭐⭐ **2 Stars**: 60-79% - "Good job! 👍"
- ⭐⭐⭐ **3 Stars**: 80%+ - "Excellent! 🌟"

## Technical Details

- **Language**: Kotlin
- **UI Framework**: Android XML with Material Design Components
- **Architecture**: Activity-based with View Binding
- **Minimum SDK**: API 21 (Android 5.0)
- **Target SDK**: API 34 (Android 14)

## File Structure

```
app/
├── src/main/
│   ├── java/com/gkquiz/indianplaces/
│   │   ├── MainActivity.kt          # Welcome screen
│   │   ├── QuizActivity.kt         # Quiz logic
│   │   ├── ResultActivity.kt       # Results display
│   │   └── Question.kt             # Data models
│   ├── res/
│   │   ├── layout/                 # UI layouts
│   │   ├── values/                 # Colors, strings, themes
│   │   └── drawable/               # Icons and backgrounds
│   └── AndroidManifest.xml
└── build.gradle                    # Dependencies
```

## Educational Value

This app helps Standard I students:
- Learn about famous Indian monuments and their locations
- Develop reading comprehension skills
- Practice multiple choice question format
- Build confidence through positive feedback
- Improve geographic knowledge of India

Perfect for homeschooling, classroom activities, or fun learning at home! 🎓📱 