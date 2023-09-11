#Backup Your Data: Before performing any upgrades, it's crucial to back up your PostgreSQL data to avoid potential data loss. 
#You can use the pg_dump command to create a dump of your databases:
pg_dumpall > backup.sql
#Check Current Version: Determine your current PostgreSQL version:
psql --version
#Update Package Lists:
sudo apt update
#Upgrade PostgreSQL Packages:
sudo apt upgrade postgresql
#If a new major version is available, Debian may not upgrade PostgreSQL automatically 
#restart pg:
sudo service postgresql restart
psql --version
#Test Your Applications
