pipeline {
    agent any
    stages {
        stage('Déploiement Docker') {
            steps {
                echo 'Lancement des conteneurs...'
                sh 'doooooooooooocker compose up -d --build moodle_app'
            }
        }
    }
}
