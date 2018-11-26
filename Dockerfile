# Trigger.
FROM jenkins/jenkins

RUN /usr/local/bin/install-plugins.sh mailer credentials ssh-credentials script-security matrix-auth matrix-project \ 
    docker-build-step github-pullrequest github-oauth blueocean-github-pipeline \
    github github-branch-source workflow-aggregator pipeline-model-definition pipeline-github github-autostatus \ 
    deployment-notification terraform pipeline-graph-analysis r \
    workflow-support workflow-job job-dsl git-changelog git-notes tracking-git ansicolor \
    branch-api clone-workspace-scm disk-usage email-ext envinject extended-choice-parameter extensible-choice-parameter \
    git git-client graphiteIntegrator greenballs jquery junit-attachments mask-passwords \
    metrics metrics-diskusage metrics-graphite multiple-scms packer parameterized-trigger pegdown-formatter \
    promoted-builds publish-over-ssh rake ruby ruby-runtime scm-api simple-theme-plugin \
    slack hubot-steps timestamper token-macro vagrant xshell

RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state

# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y groovy
RUN cd /usr/local/bin; wget https://releases.hashicorp.com/terraform/0.8.2/terraform_0.8.2_linux_amd64.zip; unzip -j terraform_*.zip; rm terraform_*.zip

# USER jenkins # drop back to the regular jenkins user - good practice


