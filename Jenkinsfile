pipeline{
  agent any
  environment {
      GIT_REPO = 'https://github.com/anithaambrose/jenkins-t2-repo.git'
      BRANCH = 'main'
  }
  stages {
      stage("SCM") {
          steps{
              echo "Fetching Code from Github"
              git branch: "${BRANCH}", url: "${GIT_REPO}"
          }
      }
      stage('Build') {
          steps {
              echo 'Running a simple script'
              sh './simple_script.sh'
          }
      }
  }
  post {
      success {
          mail to: 'anitodevops@gmail.com',
              subject: "SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
              body: """Hello Anito,<br><br>
                       Build successful.<br>
                       <b>Job:</b> ${env.JOB_NAME}<br>
                       <b>Build:</b> ${env.BUILD_NUMBER}<br>
                       <b>URL:</b> <a href="${env.BUILD_URL}">${env.BUILD_URL}</a><br><br>
                       Regards,<br>
                       Jenkins Task-2"""
      }
     failure {
          mail to: 'anitodevops@gmail.com',
              subject: "FAILURE: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
              body: """Hello Anito,<br><br>
                       Build Failed, Please Check.<br>
                       <b>Job:</b> ${env.JOB_NAME}<br>
                       <b>Build:</b> ${env.BUILD_NUMBER}<br>
                       <b>URL:</b> <a href="${env.BUILD_URL}">${env.BUILD_URL}</a><br><br>
                       Regards,<br>
                       Jenkins Task-2"""
      } 
  }
}
