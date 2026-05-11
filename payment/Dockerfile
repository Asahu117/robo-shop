# Stage 1: Build dependencies
FROM python:3.9 AS builder

WORKDIR /build

# Copy dependency file first for better caching
COPY requirements.txt .

# Install packages into custom location
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# Copy application files
COPY *.py .
COPY payment.ini .

# ---------------------------------------------------

# Stage 2: Runtime image
FROM python:3.9-slim

WORKDIR /app

# Copy installed Python packages
COPY --from=builder /install /usr/local

# Copy application source code
COPY --from=builder /build/*.py /app/
COPY --from=builder /build/payment.ini /app/

ENV INSTANA_SERVICE_NAME=payment

EXPOSE 8080

CMD ["uwsgi", "--ini", "payment.ini"]