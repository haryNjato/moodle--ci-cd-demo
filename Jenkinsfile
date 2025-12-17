pipeline {
    agent any
    stages {
        stage('Déploiement Docker') {
            steps {
                echo 'Lancement de Moodle avec le chemin absolu...'
                // Cette commande précise exactement où est le fichier yml
                sh 'sudo docker-compose -f /home/ernest/moodle/docker-compose.yml up -d --build moodle_app'
            }
        }
        stage('Nettoyage') {
            steps {
                sh 'sudo docker ps'
            }
        }
    }
}
