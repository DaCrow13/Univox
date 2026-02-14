# Univox: Intelligent Study Assistant

This repository contains the source code, evaluation data, and user study results for **Univox**, an AI-powered study assistant designed to help university students with their coursework.

## 📂 Repository Structure

The repository is organized into three main sections:

### 1. `system/`
Contains the final, deployable version of the system with all essential files.
- **`study_buddy/`**: The core Python package containing the logic, agents, and tools.
- **`streamlit_frontend.py`**: The main entry point for the web application.
- **`requirements.txt`**: List of dependencies.
- **`run_public_server.py`**: Script to launch the server with public access (Ngrok).
- **`config.yaml`**: Configuration for models and vector stores.

### 2. `evaluation/`
Contains datasets and scripts used for the technical evaluation of the system.
- **`datasets/`**:
    - `test_set.json`: Gold standard dataset with Q&A pairs for RAGAS evaluation.
- **`scripts/`**:
    - `evaluate_ragas.py`: Script to run RAGAS evaluation.
    - `test_retrieval.py`: Script to test retrieval performance.
    - Performance testing tools (Locust).
- **`results/`**:
    - `ragas_scores.csv`: Detailed RAGAS metrics for each test case.
    - `results.md`: Summary of technical performance metrics.

### 3. `userstudy/`
Contains materials and results from the human evaluation (User Study).
- **`scenarios/`**: The 8 experimental scenarios used by students during the test.
- **`questionnaires/`**: The items of the System Usability Scale (SUS) and ad-hoc quality questions.
- **`results/`**: Raw data (`results.csv`) and statistical summary of the user study (SUS scores, NPS).

---

## 🚀 Installation & Setup

1.  **Clone the repository**:
    ```bash
    git clone <repo-url>
    cd univox
    ```

2.  **Navigate to the system directory**:
    ```bash
    cd system
    ```

3.  **Create a virtual environment**:
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows: venv\Scripts\activate
    ```

4.  **Install dependencies**:
    ```bash
    pip install -r requirements.txt
    ```

5.  **Configure Environment**:
    - Copy `.env.example` to `.env` (if available) or set your API keys (TogetherAI, Ngrok) in the environment variables.

---

## ▶️ Running the Application

To start the **Streamlit** interface:

```bash
streamlit run streamlit_frontend.py
```

The application will be accessible at `http://localhost:8501`.

To expose the server publicly via **Ngrok**:

```bash
python run_public_server.py
```

---

## 📊 Evaluation & Experiments

To reproduce the experiments:

1.  **Load Testing**:
    Navigate to `evaluation/scripts/` and run the Locust tests:
    ```bash
    locust -f locust_test.py
    ```

2.  **RAG Metrics**:
    (Scripts for RAGAS/Precision evaluation are located in `evaluation/scripts/` if available).

---

## 📝 Prompts

All system prompts and tool definitions are documented in **[prompts.md](prompts.md)**.
