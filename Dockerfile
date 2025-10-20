# Use full Python image (not slim) to avoid missing system libs
FROM python:3.11

# Set working directory
WORKDIR /app

# Install required system dependencies for pandas & scikit-learn
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    make \
    build-essential \
    libopenblas-dev \
    liblapack-dev \
    gfortran \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements first to leverage Docker cache
COPY req.txt .

# Upgrade pip and install Python dependencies
RUN pip install --upgrade pip setuptools wheel --no-cache-dir \
    && pip install --no-cache-dir -r req.txt

# Copy application files
COPY . .

# Expose FastAPI port
EXPOSE 8000

# Run FastAPI app
CMD ["uvicorn", "apps:app", "--host", "0.0.0.0", "--port", "8000"]
