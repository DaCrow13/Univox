@echo off
echo ===========================================
echo UniVox / Study Buddy - Database Setup
echo ===========================================

if not exist "venv" (
    echo Error: Virtual environment not found!
    echo Please run setup_env.bat first.
    pause
    exit /b
)

echo Activating venv...
call venv\Scripts\activate

echo.
echo initializing/updating FAISS vector database...
echo This process might take a while depending on the number of documents.
echo.

python -m study_buddy.vectorstore_pipeline.update_faiss_index

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ===========================================
    echo Database setup complete!
    echo ===========================================
) else (
    echo.
    echo ===========================================
    echo Error: Database setup failed.
    echo Please check the error messages above.
    echo ===========================================
)

pause
