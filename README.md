#  Jenkins CI/CD Pipeline for Spring PetClinic App (with Docker)

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

<summary>Click to expand</summary>

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
├── screenshots/
│   └── pipeline-success.png
``` 
</details>




# 🔁 Triggering Strategy
This pipeline is triggered on every commit using pollSCM.

It automatically pulls the latest code and rebuilds the app.


# 📌 Notes
This setup is run and tested in KodeKloud Jenkins Playground.

Docker is pre-installed, and Jenkins has full permissions



# 👨‍💻 Author
Raj
Learning DevOps, dreaming big, and building pipelines like a pro.
🔗 GitHub Profile

🌟 Show Your Support
If this helped you or inspired you, leave a ⭐ on the repo!


![alt text](<Screenshot 2025-04-08 162054.png>)