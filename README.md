#  Jenkins CI/CD Pipeline for Spring PetClinic App (with Docker)
![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
# DAY-2-JENKINS-CI-CD-PIPELINE

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![Repo Size](https://img.shields.io/github/repo-size/WhereareyouRAJ/DAY-2-JENKINS-CI-CD-PIPELINE)
![Last Commit](https://img.shields.io/github/last-commit/WhereareyouRAJ/DAY-2-JENKINS-CI-CD-PIPELINE)





This project demonstrates a complete **CI/CD pipeline using Jenkins** to:
- Automatically trigger on each commit ✅
- Build a Docker image of the Spring PetClinic app ✅
- Deploy the app in a container ✅
- Test the running app using `curl` ✅

## 🔧 Technologies Used

- **Jenkins** (KodeKloud Playground)
- **Docker** (pre-installed in playground)
- **GitHub** (SCM for source code)
- **Shell scripting** for deployment & testing
- **Poll SCM trigger** (every 1 min)

---

## 📁 Project Structure

<details> 

<summary>📁 Project Folder Structure</summary>

``` 
DAY-2-JENKINS-CI-CD-PIPELINE/
├── .mvn/
├── src/
|   ├── main/
│   ├── java/
│   └── resources/
└── test/
    ├── java/
    └── resources/
├── .editorconfig
├── .gitattributes
├── .gitignore
├── .gitpod.yml
├── Dockerfile
├── Jenkinsfile
├── mvnw
├── mvnw.cmd
└── pom.xml
└── screenshots/ 
``` 
</details>




# 🔁 Triggering Strategy
This pipeline is triggered on every commit using pollSCM.

It automatically pulls the latest code and rebuilds the app.


# 📌 Notes
- This setup is run and tested in KodeKloud Jenkins Playground.

- Docker is pre-installed, and Jenkins has full permissions

# ✅ Output Proof 
1. Job created
![alt text](<Screenshot 2025-04-08 161823.png>)

2. Build successfully 
![alt text](<Screenshot 2025-04-08 161842.png>)

3. Console output 
![alt text](<Screenshot 2025-04-08 162054-1.png>)

4. Application succesfully hosted
![alt text](<Screenshot 2025-04-08 161538.png>)


## 🧪 How to Run Locally

```bash
git clone https://github.com/WhereareyouRAJ/DAY-2-JENKINS-CI-CD-PIPELINE.git
cd DAY-2-JENKINS-CI-CD-PIPELINE
docker build -t spring-petclinic-app .
docker run -d -p 8090:8080 spring-petclinic-app


# 👨‍💻 Author

Raj
Learning DevOps, dreaming big, and building pipelines like a pro.

# 🌟 Show Your Support
 If this helped you or inspired you, leave a ⭐ on the repo!


