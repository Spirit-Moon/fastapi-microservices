# Microservices with FastAPI, Tortoise ORM, Docker and Nginx
## Architecture Schema

![schema](https://github.com/GavriloviciEduard/fastapi-microservices/blob/master/res/Database%20Schema%20Draft%201.jpg)

## Run and test

To start the application just run 
```
docker-compose up -d
```

To test the endpoints you can access swagger at 

```
http://localhost:8080/pokemon/docs/
```
```
http://localhost:8080/teams/docs/
```

# Micro Services Application Deployment 

The project involves designing, implementing, and deploying a multi-container application using containerization technologies, with a focus on the OpenShift container orchestration platform. The application consists of multiple microservices or components that work seamlessly within the OpenShift environment.

## Prerequisites

Ensure you have the following prerequisites installed:
- Docker
- OpenShift Container Platform
- GIT

### Installation

Clone the project repository:

```bash
git clone https://github.com/tesnimkh/fastapi-microservices
cd your-project
```

#### Openshift 

1. **Deploy on OpenShift:**
   - Build and push Docker images for each service:
     ```bash
     docker build -t your-registry/your-service .
     docker push your-registry/your-service
     ```

   - Deploy services on OpenShift using deployment configurations:
     ```bash
     oc apply -f your-service-deployment.yaml
     oc rollout status deployment your-service
     ```


2. **Configure Communication and Database:**
   - Configure communication mechanisms between services.
   - Update configurations for the database connection.


3. **Scaling and Load Balancing:**
   - Explore OpenShift features for scaling horizontally.
   - Implement load balancing.


4. **Testing and Monitoring:**
   - Thoroughly test the deployed application.
   - Set up monitoring for ongoing observation.


5. **Continuous Integration and Deployment (CI/CD):**
   - Implement CI/CD pipelines for automated testing and deployment.


6. **Security and Secrets Management:**
   - Secure your application with RBAC and OpenShift Secrets.

