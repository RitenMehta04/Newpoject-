# Newpoject-
jenkins script
Explanation:
Environment Configuration:

SSH_KEY is an environment variable holding the SSH key credentials stored in Jenkins credentials manager.
Pipeline Stages:

Each stage corresponds to a set of commands from your list.
Stage: Check Packages: Loops through hosts and packages to run ls -ld on each package path.
Stage: Execute Commands: For commands on different users, SSH into the server and run the respective commands.
Stage: Purge and Edit Profiles: A multiline command executed on rc.xfer@cnd1.
Usage:
Save this script in a Jenkinsfile.
Ensure that the SSH key credential is correctly set up in Jenkins.
Replace placeholders like ssh-key-id with actual credential IDs.
Trigger the pipeline job in Jenkins.
This script assumes that Jenkins has the necessary permissions and SSH keys configured for accessing the remote servers. Adjust the SSH command paths and authentication methods as necessary for your environment.
