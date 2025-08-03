pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning code...'
                // 如果你想手動拉程式碼，也可以加上 git 指令，但用 "Pipeline script from SCM" 的話就不必
            }
        }



        stage('Test') {
            steps {
                echo 'Running Robot Framework tests...'
                bat 'robot .'
            }
        }
    }
}
