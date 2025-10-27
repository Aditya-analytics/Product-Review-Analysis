# 🛍️ Product Review Sentiment Analyzer

A modern, elegant web application for analyzing product reviews using Machine Learning. Built with React, Tailwind CSS, and Flask.

## ✨ Features

- 🤖 **ML-Powered Analysis**: Uses Logistic Regression with TF-IDF vectorization for accurate sentiment predictions
- 📊 **Beautiful Visualizations**: Interactive donut charts and gradient bar charts with smooth animations
- 🎨 **Modern UI**: Clean, minimal design inspired by Linear.app with glass morphism effects
- 🌓 **Dark/Light Mode**: Toggle between stunning light and dark themes with neon blue shadows in dark mode
- 🚀 **Real-time Processing**: Instant analysis of CSV/Excel files with visual feedback
- 📱 **Responsive Design**: Works seamlessly on all screen sizes
- ✨ **Smooth Animations**: Framer Motion animations for delightful user interactions

## 🛠️ Tech Stack

### Frontend
- React 18
- Tailwind CSS
- Framer Motion (animations)
- Recharts (data visualization)
- Vite (build tool)

### Backend
- Flask
- Pandas
- scikit-learn
- Joblib

## 📋 Prerequisites

- Python 3.8+
- Node.js 16+
- npm or yarn

## 🚀 Setup Instructions

### 1. Backend Setup

```bash
# Install Python dependencies
pip install -r requirements.txt

# Run the Flask API
python api.py
```

The backend server will start at `http://localhost:5000`

### 2. Frontend Setup

```bash
# Navigate to frontend directory
cd frontend

# Install dependencies
npm install

# Start the development server
npm run dev
```

The frontend will start at `http://localhost:3000`

## 📁 File Format

Your CSV file must contain the following columns:
- `product_name`: Name of the product
- `review`: Review text

Example:
```csv
product_name,review
"Product A","Great product, highly recommend!"
"Product B","Not satisfied with the quality"
```

## 🎯 Usage

1. Open your browser and navigate to `http://localhost:3000`
2. Click "Get Started" on the landing page
3. Upload your CSV or Excel file with product reviews
4. View the sentiment analysis results:
   - Sentiment distribution pie chart
   - Top products ranked by positive sentiment
   - Sample predictions table

## 📸 Screenshots

### Landing Page
Modern hero section with smooth animations and feature cards

### Analyzer Page
- Drag-and-drop file upload interface
- Real-time analysis progress
- Interactive data visualizations
- Detailed predictions table

## 🎨 Design Philosophy

The UI follows modern web design principles:
- **Clean & Minimal**: Focus on content without distractions
- **Glass Morphism**: Subtle backdrop blur effects with transparency
- **Smooth Animations**: Framer Motion for delightful micro-interactions
- **Gradient Accents**: Beautiful color gradients (blue → purple → pink in light mode)
- **Neon Effects**: Cyberpunk-inspired neon blue glows in dark mode
- **Responsive**: Mobile-first design approach
- **Classy Visualizations**: Enhanced donut charts and gradient bar charts with hover effects

## 🔧 Development

### Build for Production

```bash
# Frontend
cd frontend
npm run build

# The build output will be in frontend/dist
```

### Run Production Build

```bash
cd frontend
npm run preview
```

## 📝 Notes

- Make sure both backend and frontend servers are running
- The backend must have the `senti_lr.pkl` model file in the project root
- CORS is enabled for development (localhost:3000)

## 👤 Author

Created by **Aditya**

## 🧠 Machine Learning Model

This project utilizes:
- **Algorithm**: Logistic Regression
- **NLP Technique**: TF-IDF (Term Frequency-Inverse Document Frequency) vectorization
- **Use Case**: Businesses can upload review files and receive AI-driven sentiment analysis solutions

The model analyzes text reviews and predicts sentiment (Positive/Negative) with high accuracy, helping businesses understand customer feedback at scale.

## 📄 License

This project is open source and available under the MIT License.

---

This project uses ML Logistic Regression and TF-IDF NLP vectorizing technique.
Businesses can upload files and get AI-driven sentiment analysis solutions.

Made with ❤️ using Python & ML
