pipeline {
    agent any
    stages {
        stage('Déploiement Docker') {
            steps {
                echo 'Lancement des conteneurs...'
                // On utilise le chemin complet ou on s'assure que docker est accessible
                sh 'docker compose up -d --build'
            }
        }
    }
}
