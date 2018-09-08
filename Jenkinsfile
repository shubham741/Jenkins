node {
   def mvnHome
   def app
   def docker
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/shubham741/Jenkins.git'
      // Get the Maven tool.
      // ** NOTE: This 'M3' Maven tool must be configured
      // **       in the global configuration.           
      mvnHome = tool 'maven_3_5_4'
      docker = tool 'docker'
   }
   stage('Build') {
      // Run the maven build
      if (isUnix()) {
         sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean package"
      } else {
         bat(/"${mvnHome}\bin\mvn" -Dmaven.test.failure.ignore clean package/)
      }
   }
   stage('Test') {
      junit '**/target/surefire-reports/TEST-*.xml'
      archive 'target/*.jar'
   }
   
   stage('Docker image build'){
      sh 'docker build -f Dockerfile -t shsingh/demo .'
   }
}
