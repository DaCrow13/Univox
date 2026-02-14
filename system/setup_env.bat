@echo off
echo ===========================================
echo UniVox / Study Buddy - Environment Setup
echo ===========================================

if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
) else (
    echo Virtual environment already exists.
)

echo Activating venv...
call venv\Scripts\activate

echo Upgrading pip...
python -m pip install --upgrade pip

echo Installing dependencies from requirements.txt...
pip install -r requirements.txt

echo ===========================================
echo Setup complete!
echo.
echo IMPORTANT: Run setup_db.bat next to build the knowledge base.
echo.
echo To run the app (after DB setup):
echo streamlit run streamlit_frontend.py
echo ===========================================
pause
