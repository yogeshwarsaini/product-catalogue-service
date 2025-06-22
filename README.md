# 🛍️ Product Catalogue Microservice

A complete microservice built using **Spring Boot**, fully **containerized with Docker**, deployed via **Kubernetes**, and version-controlled with **Git tags & CI/CD** pipelines.

---

## 🔧 Tech Stack

- 🚀 Spring Boot (RESTful API)
- 🐳 Docker (Multi-version container images)
- ☸️ Kubernetes (Minikube)
- 🔀 GitHub (Git tags for versioning)
- 🔄 GitHub Actions (CI/CD automation)
- 🗄️ H2 In-Memory Database

---

## 🚀 Features by Version

| Version | Features                                                                 |
|---------|--------------------------------------------------------------------------|
| `v1.0.0` | Basic CRUD for `/products`                                              |
| `v1.1.0` | Search products by name → `/products/search?name=mouse`                |
| `v2.0.0` | Filter products by price → `/products/filter?minPrice=100&maxPrice=500`|

---

## 🐳 Docker Instructions

### 📦 Build Docker Image
```bash
docker build -t product-catalogue .
````

### ▶️ Run Locally

```bash
docker run -p 9090:9090 product-catalogue
```

### 📤 Docker Hub Images

* `yogeshwarsaini/product-catalogue:v1.0.0`
* `yogeshwarsaini/product-catalogue:v1.1.0`
* `yogeshwarsaini/product-catalogue:v2.0.0`

To pull and run any version:

```bash
docker pull yogeshwarsaini/product-catalogue:v1.1.0
docker run -p 9090:9090 yogeshwarsaini/product-catalogue:v1.1.0
```

---

## ☸️ Kubernetes Deployment

### ✅ Step-by-Step

```bash
minikube start

kubectl apply -f k8s/v1/
kubectl apply -f k8s/v1.1/
kubectl apply -f k8s/v2/
kubectl apply -f k8s/ingress.yaml

minikube tunnel
```

---

## 🌐 Access APIs via Ingress

| Version | URL Example                                                                                                                     |
| ------- | ------------------------------------------------------------------------------------------------------------------------------- |
| v1.0.0  | [http://localhost/v1/products](http://localhost/v1/products)                                                                    |
| v1.1.0  | [http://localhost/v1.1/products/search?name=mouse](http://localhost/v1.1/products/search?name=mouse)                            |
| v2.0.0  | [http://localhost/v2/products/filter?minPrice=100\&maxPrice=500](http://localhost/v2/products/filter?minPrice=100&maxPrice=500) |

---

## 🔍 Sample API (Test via Postman)

```http
GET /products
GET /products/search?name=mouse
GET /products/filter?minPrice=200&maxPrice=1000
```

---

## 🧠 System Design Overview

### 🔧 Architecture Components

| Component       | Description                               |
| --------------- | ----------------------------------------- |
| Spring Boot App | Java microservice with REST endpoints     |
| Docker          | Containerized build per version           |
| Kubernetes      | Manages versioned deployments             |
| Ingress         | Routes `/v1`, `/v1.1`, `/v2` to right pod |
| Docker Hub      | Stores versioned images                   |
| GitHub Actions  | Automates Docker build & push on tag push |

---

### 🔁 Versioning Logic

* Each version (`v1.0.0`, `v1.1.0`, `v2.0.0`) is a **Git tag**
* Feature added → Git tag created → Docker image pushed
* Deployed separately via Kubernetes and routed by Ingress

---

### 🌐 Ingress Path Routing

| Path    | Routed To                 |
| ------- | ------------------------- |
| `/v1`   | product-catalogue\:v1.0.0 |
| `/v1.1` | product-catalogue\:v1.1.0 |
| `/v2`   | product-catalogue\:v2.0.0 |

---

## ✅ Project is READY for Deployment, Testing & Demo 🚀

* ✅ Dockerized per version
* ✅ Kubernetes deployed via manifests
* ✅ CI/CD workflow (optional: `.github/workflows/ci-cd.yaml`)
* ✅ H2 console: `http://localhost:9090/h2-console` (dev mode only)

---

## 👨‍💻 Author

Yogeshwar Saini
contact :- 9958847153
gmail   :- yogismash123@gmail.com

> GitHub: [yogeshwarsaini](https://github.com/yogeshwarsaini)
> Docker Hub: [yogeshwarsaini](https://hub.docker.com/u/yogeshwarsaini)

---
