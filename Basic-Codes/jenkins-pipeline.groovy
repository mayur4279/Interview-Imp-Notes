pipeline  {
    agent  any  

    stages {
        stage ('pull') {
           steps { 
            git  'https://github.com/mayur4279/project1'
           }  

        stage ('build') { 
            sh '/opt/maven/bin/mvn  clean  package -Dmaven.test.skip=true'   
           }

        stage ('deploy')   {
            sh  'echo "job_done"'  
           }
        }
    }
}

