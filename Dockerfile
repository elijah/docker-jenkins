FROM jenkins
RUN /usr/local/bin/install-plugins.sh docker-plugin docker-slaves docker-build-step bitbucket bitbucket-oauth \
    github github-oauth ghprb github-branch-source:1.8 workflow-aggregator \ 
    chef-identity chef-tracking uno-choice deployment-notification terraform pipeline-graph-analysis \
    workflow-support workflow-job job-dsl git git-changelog git-notes tracking-git ansicolor \
    campfire clone-workspace-scm disk-usage email-ext envinject extended-choice-parameter extensible-choice-parameter \
    git git-client graphiteIntegrator greenballs jquery junit-attachments mask-passwords mesos \
    metrics metrics-diskusage metrics-graphite multiple-scms packer parameterized-trigger pegdown-formatter \
    promoted-builds publish-over-ssh rake ruby ruby-runtime scm-api scm-sync-configuration simple-theme-plugin \
    slack ssh-credentials timestamper token-macro vagrant xshell
