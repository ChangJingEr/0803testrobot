pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning code...'
                // 如果你想手動拉程式碼，也可以加上 git 指令，但用 "Pipeline script from SCM" 的話就不必
            }
        }

        stage('Install Dependencies') {
            steps {
                bat 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                echo 'Running Robot Framework tests...'
                bat 'robot 0803testrobot/'  // 假設你的測試檔案放在 tests 資料夾
            }
        }
    }
}
