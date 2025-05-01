# dotpeek_docker_linux
Jetbrain's C# decompiler on docker

# What's this project ?

This project is a Docker project to run Jetbrain's Dotpeek tool on linux using Wine in Docker

# How to use ? 

Simply launch ./dotpeek.sh and the script will pull the remote image from the github registry and launch it immediately ! 
(I advise using my already built image as building the image locally is ~15-20 minutes long to install .NET in wine)