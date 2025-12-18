pipeline {
    agent any
    stages {
        stage('Déploiement Docker') {
            steps {
                echo 'Lancement de Moodle...'
                // Suppression de sudo et utilisation du chemin relatif
                sh 'docker compose up -d --build moodle_app'
            }
        }
        stage('Vérification') {
            steps {
                // Suppression de sudo
                sh 'docker ps'
            }
        }
    }
}
