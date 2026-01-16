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
                echo 'Arrêt propre puis redémarrage de Moodle'
                sh '''
                docker compose -p moodle down || true
                docker comppose -p moodle up -d --build 
                '''
            }
        }
    }
}
