pipeline {
    agent any
    
    environment {
        SLACK_WEBHOOK_URL = credentials('slack-webhook-url')
        SLACK_CHANNEL = '#devops-notifications'
    }
    
    stages {
        stage('Checkout') {
            steps {
                echo 'Récupération du code depuis GitHub...'
                checkout scm
                sh 'git log -1 --oneline'
            }
        }
        
        stage('Build') {
            steps {
                echo 'Compilation et tests du projet...'
                sh '''
                    mvn clean compile test package
                '''
            }
            post {
                success {
                    echo 'Build réussi!'
                }
                failure {
                    echo 'Échec du build!'
                }
            }
        }
        
        stage('Archive') {
            steps {
                echo 'Archivage des artefacts...'
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
                archiveArtifacts artifacts: 'target/surefire-reports/**/*', allowEmptyArchive: true
            }
        }
        
        stage('Deploy') {
            when {
                expression {
                    currentBuild.result == null || currentBuild.result == 'SUCCESS'
                }
            }
            steps {
                echo 'Déploiement de l\'application...'
                sh '''
                    echo "Simulation du déploiement..."
                    # Ici vous pouvez ajouter votre logique de déploiement
                    # Par exemple: copier les fichiers, redémarrer un service, etc.
                '''
            }
        }
        
        stage('Notify Slack') {
            steps {
                script {
                    def color = currentBuild.result == 'SUCCESS' ? 'good' : 'danger'
                    def message = currentBuild.result == 'SUCCESS' 
                        ? "✅ Pipeline réussi pour ${env.JOB_NAME} #${env.BUILD_NUMBER}" 
                        : "❌ Pipeline échoué pour ${env.JOB_NAME} #${env.BUILD_NUMBER}"
                    
                    slackSend(
                        channel: env.SLACK_CHANNEL,
                        color: color,
                        message: message,
                        attachments: [
                            [
                                color: color,
                                title: "Pipeline ${env.JOB_NAME}",
                                fields: [
                                    [
                                        title: "Statut",
                                        value: currentBuild.result ?: "EN COURS",
                                        short: true
                                    ],
                                    [
                                        title: "Build #",
                                        value: env.BUILD_NUMBER,
                                        short: true
                                    ],
                                    [
                                        title: "Commit",
                                        value: env.GIT_COMMIT?.take(7) ?: "N/A",
                                        short: true
                                    ],
                                    [
                                        title: "Auteur",
                                        value: env.GIT_AUTHOR_NAME ?: "N/A",
                                        short: true
                                    ]
                                ]
                            ]
                        ]
                    )
                }
            }
        }
    }
    
    post {
        always {
            echo 'Pipeline terminé'
            cleanWs()
        }
        success {
            echo 'Pipeline réussi!'
        }
        failure {
            echo 'Pipeline échoué!'
        }
    }
}

