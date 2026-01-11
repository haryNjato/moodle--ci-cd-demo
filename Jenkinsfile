pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Déploiement Docker sécurisé') {
            steps {
                echo 'Déploiement Moodle (sans perte de données)'
                sh '''
                docker compose -p moodle down || true
                docker compose -p moodle up -d --build
                '''
            }
        }
    }
}
