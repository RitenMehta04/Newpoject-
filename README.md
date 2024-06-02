Steps to Use the Script:

Install SSH Agent Plugin:
Ensure you have the SSH Agent plugin installed in Jenkins. You can install it from the Manage Jenkins -> Manage Plugins section.

Add SSH Credentials:
Go to Manage Jenkins -> Manage Credentials -> (select domain) -> Add Credentials. Add the SSH username with private key. Note the ID you provide to the credentials, as you will use it in the SSH_CREDENTIALS_ID environment variable in the script.

Create a Pipeline Job:

Go to Jenkins and create a new pipeline job.
In the job configuration, select "Pipeline script" and paste the above script.
Adjust the Credential ID:
Make sure the SSH_CREDENTIALS_ID in the environment section matches the ID of the SSH credentials you added to Jenkins.

This combined script will perform all the tasks you specified, logging into various servers and executing the necessary commands. Adjust the server names, paths, and commands if needed to match your actual environment.
