# FFTGestureRecognition

# Gesture Recognition Using Simulated Radar Data (MATLAB)

This project simulates radar-based gesture recognition using synthetic signals in MATLAB. It focuses on classifying different gestures by analyzing their frequency content using signal processing techniques. The goal is to replicate tasks found in automotive applications, such as driver gesture recognition or proximity detection for car access systems.

---

## 📌 Objectives

- Simulate radar signals for three distinct gestures
- Analyze signals in the frequency domain using FFT
- Classify gestures based on peak frequency characteristics
- Build a processing pipeline adaptable to real-world sensor data

---

## 👋 Simulated Gestures

| Gesture | Description                             | Frequency Behavior |
|---------|-----------------------------------------|--------------------|
| Wave    | Gentle hand wave                        | Low frequency (<2 Hz) |
| Push    | Quick forward push                      | Medium frequency (2–4 Hz) |
| Swipe   | Fast horizontal motion                  | High frequency (>4 Hz) |

---

## ⚙️ How It Works

1. **Signal Generation:**  
   Simulates each gesture using noisy sine waves and frequency-modulated components.

2. **Feature Extraction (FFT):**  
   Calculates the dominant frequency in each signal using Fast Fourier Transform.

3. **Classification:**  
   Maps frequency peaks to gesture labels using thresholds:
   - < 2 Hz → Wave  
   - 2–4 Hz → Push  
   - > 4 Hz → Swipe

4. **Output:**  
   The program prints the classified gesture for each synthetic signal.

---
## 🚗 Relevance to Automotive Sensor Applications

This simulation aligns with key aspects of automotive sensor development:

- Signal processing (FFT, filtering, denoising)
- Sensor test planning through synthetic data generation
- Classification of gesture-like signals
- MATLAB-based workflow, suitable for developing car access algorithms
