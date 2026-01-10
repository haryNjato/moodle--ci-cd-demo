pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Déploiement Docker') {
            steps {
                echo 'Mise à jour intelligente des conteneurs...'
                // On utilise uniquement 'up' avec --build. 
                // Docker va redémarrer seulement ce qui est nécessaire sans couper Jenkins.
                sh 'docker compose up -d --build --remove-orphans'
            }
        }
    }
}
