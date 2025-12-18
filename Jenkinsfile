pipeline {
    agent any
    stages {
        stage('Déploiement Docker') {
            steps {
                echo 'Lancement des conteneurs...'
                // Retrait de sudo et du chemin absolu /home/ernest/
                sh 'docker compose up -d --build moodle_app'
            }
        }
        stage('Nettoyage') {
            steps {
                // Retrait de sudo ici aussi
                sh 'docker ps'
            }
        }
    }
}
