pipeline {
    agent any
    stages {
        stage('Déploiement Docker') {
            steps {
                echo 'Lancement des conteneurs...'
                // ICI : Aucun mot "sudo", et aucun chemin vers /home/ernest/
                sh 'docker compose up -d --build moodle_app'
            }
        }
        stage('Nettoyage') {
            steps {
                // ICI AUSSI : On retire le sudo
                sh 'docker ps'
            }
        }
    }
}
