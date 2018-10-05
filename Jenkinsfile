node {
   def mvnHome
   def app
   def docker
   def dockerImage
   stage('Preparation') { 
      git 'https://github.com/shubham741/Jenkins.git'    
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
      //dockerImage = docker images | awk '/Successfully built/{print $NF}'
      //IMAGE_ID=$(docker build -q -t foo . 2>/dev/null | awk '/Successfully built/{print $NF}')
   }
   
   /*stage('Docker image deploy'){
      sh 'docker run -p 8090:8090 36ee344df54f'
   }*/
}
