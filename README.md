# Product Catalogue Microservice

This is a Spring Boot–based Product Catalogue service built with:

- Java + Spring Boot
- Docker (containerized for multiple versions)
- Kubernetes (multi-version deployments)
- GitHub Actions (CI/CD)
- H2 In-Memory Database

---

## 🚀 Features by Version

| Version | Features |
|---------|----------|
| v1.0.0  | Basic CRUD (GET, POST, PUT, DELETE) for `/products` |
| v1.1.0  | Search by product name → `/products/search?name=mouse` |
| v2.0.0  | Filter by price → `/products/filter?minPrice=100&maxPrice=500` |

---

## 🐳 Docker Usage

### Build Image
```bash
docker build -t product-catalogue .



Run Container

docker run -p 9090:9090 product-catalogue


Docker Hub Images
v1.0.0

yogeshwarsaini/product-catalogue:v1.1.0

yogeshwarsaini/product-catalogue:v2.0.0

☸ Kubernetes Deployment
Start minikube

bash
Copy code
minikube start
Apply manifests

bash
Copy code
kubectl apply -f k8s/v1/
kubectl apply -f k8s/v1.1/
kubectl apply -f k8s/v2/
kubectl apply -f k8s/ingress.yaml
Run tunnel

bash
Copy code
minikube tunnel
Access:

bash
Copy code
http://localhost/v1/products
http://localhost/v1.1/products/search?name=mouse
http://localhost/v2/products/filter?minPrice=100&maxPrice=500


🧪 Sample API (via Postman)
http
Copy code
GET /products
GET /products/search?name=mouse
GET /products/filter?minPrice=200&maxPrice=1000
yaml
Copy code

---

## ✅ 2. `SYSTEM_DESIGN.md`

```markdown
# System Design: Product Catalogue Microservice

---

## 📦 Architecture Overview

- REST API using Spring Boot
- Containerized using Docker
- Deployed using Kubernetes (Minikube)
- Routed via Ingress paths (`/v1`, `/v1.1`, `/v2`)
- CI/CD enabled using GitHub Actions

---

## 🧱 Components

| Component      | Description                            |
|----------------|----------------------------------------|
| Spring Boot App | Java microservice for product CRUD     |
| Docker         | Image for each version (v1.0, v1.1, v2) |
| Kubernetes     | Deployments, Services & Ingress        |
| GitHub         | Version control + CI/CD                |
| Docker Hub     | Stores all tagged container versions   |

---

## 🔁 Versioning Logic

- Git tags created for `v1.0.0`, `v1.1.0`, `v2.0.0`
- Features added incrementally
- Docker image tagged and pushed per version

---

## 🌐 Ingress Routing

| Path         | Routes to Version |
|--------------|-------------------|
| `/v1`        | product-catalogue:v1.0.0 |
| `/v1.1`      | product-catalogue:v1.1.0 |
| `/v2`        | product-catalogue:v2.0.0 |
