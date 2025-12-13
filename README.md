#  SystemMonitoring

A **FastAPI-based system monitoring platform** that integrates **Prometheus** and **Grafana** to collect, visualize, and analyze metrics, enhanced with **AI-driven recommendation logic** using machine learning.

This project demonstrates a **real-world monitoring stack** commonly used in production systems.

---

##  Tech Stack

- **FastAPI** – Backend API and metrics exposure
- **Prometheus** – Metrics scraping and storage
- **Grafana** – Metrics visualization and dashboards
- **Docker & Docker Compose** – Containerized deployment
- **scikit-learn & pandas** – AI-based recommendation logic

---

##  Architecture Overview

```

FastAPI Application
└── /metrics endpoint
└── Prometheus scrapes metrics
└── Grafana visualizes metrics

````

---

##  Prerequisites

Make sure the following are installed on your system:

- **Docker**
- **Docker Compose (v2)**

Check installation:
```bash
docker --version
docker compose version
````

---

##  Installation

Clone the repository:

```bash
git clone https://github.com/AryanSharma9917/SystemMonitoring.git
cd SystemMonitoring
```

---

##  Running the Project

### Build and Start the Stack

```bash
docker compose up --build -d
```

### Stop the Stack

```bash
docker compose down
```

### View Logs

```bash
docker compose logs --tail 50
```

---

##  Service Endpoints

| Service      | URL                                                            |
| ------------ | -------------------------------------------------------------- |
| FastAPI API  | [http://localhost:8000](http://localhost:8000)                 |
| FastAPI Docs | [http://localhost:8000/docs](http://localhost:8000/docs)       |
| Metrics      | [http://localhost:8000/metrics](http://localhost:8000/metrics) |
| Prometheus   | [http://localhost:9090](http://localhost:9090)                 |
| Grafana      | [http://localhost:3000](http://localhost:3000)                 |

### Grafana Login

* **Username:** `admin`
* **Password:** `admin`

---

## Features

* Real-time metrics collection via Prometheus
* Interactive Grafana dashboards
* FastAPI endpoints for system monitoring
* AI-powered recommendation logic using similarity matrices
* Fully containerized setup using Docker Compose

---

##  AI Component

The project includes a basic **recommendation engine**:

* User similarity matrix
* Item similarity matrix
* Built using `pandas` and `scikit-learn`

This demonstrates how **ML logic can coexist with monitoring systems**.

---

##  Project Structure

```
SystemMonitoring/
├── assets/                 
├── provisioning/           # Grafana dashboards & datasources
├── data/                   # Sample data
├── tests/                  # Unit & integration tests
├── Dockerfile
├── docker-compose.yml
├── prometheus.yml
├── req.txt
└── apps.py
```

---

## 🐳 Docker Image

Available on Docker Hub:

```
https://hub.docker.com/r/aryansharma04/systemmonitoring
```

---

##  Screenshots

### FastAPI

![API Response](assets/api-response-item.png)
![API Response](assets/api-response-user.png)
![FastAPI Docs](assets/fastapidocs.png)

### Grafana Dashboards

![Grafana Dashboard](assets/grafana-1.png)
![Grafana Dashboard](assets/grafana-2.png)

---

##  Changelog Highlights

* Migrated to **Python slim Docker image**
* Added **Docker Compose support**
* Improved **Grafana dashboards**
* Added **AI-based recommendation logic**
* Introduced **unit and integration tests**

---

##  Use Cases

* Learning system monitoring with Prometheus & Grafana
* Demonstrating containerized microservices
* Showcasing DevOps + Backend + ML integration
* Portfolio-ready DevOps project

---

##  License

This project is open-source and available under the MIT License.

---

##  Author

**Aryan Sharma**
GitHub: [https://github.com/AryanSharma9917](https://github.com/AryanSharma9917)


