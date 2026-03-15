Shell Scripting Practice 🚀

This repository contains a collection of Linux Shell (Bash) scripts focused on automation, system monitoring, DevOps tasks, and command-line utilities.

The scripts are designed to practice real-world DevOps and system administration scenarios such as file handling, process monitoring, Docker cleanup, Kubernetes operations, and AWS automation.


---

Repository Structure

shell-scripting/
│
├── arrays/
├── file-handling/
├── loops/
├── conditions/
├── system-monitoring/
├── docker/
├── kubernetes/
├── aws/
│
└── scripts/

Each script demonstrates a specific concept or automation task.


---

Topics Covered

Bash Basics

Variables

Arrays

Conditional statements

Loops

Functions

String manipulation


File Handling

Finding duplicate files

Removing empty files

File compression

Log file archiving


System Monitoring

CPU usage monitoring

Memory usage alerts

Disk usage monitoring

Service health checks


Example:

df -h | awk 'NR>1 {sub("%","",$5); if($5>80) print "High disk usage:",$6}'


---

DevOps Automation Scripts

Docker

Remove unused Docker images

Clean stopped containers

Remove dangling images

Remove unused volumes


Example:

docker system prune -a --volumes -f


---

Kubernetes

Scripts for Kubernetes cluster troubleshooting.

Examples:

Find pods in CrashLoopBackOff

Delete failed pods

Restart pods based on labels


Example:

kubectl get pods -A | grep CrashLoopBackOff


---

AWS Automation

Examples include:

Stop idle EC2 instances

Start/Stop instances based on schedule

Monitor CPU usage

SSL certificate expiry check


Example:

aws ec2 stop-instances --instance-ids i-xxxxxxxx


---

Utility Scripts

Log Archiving

Compress .log files and move them to an archive directory.

tar -czf archive.tar.gz *.log


---

Disk Monitoring

Alert when disk usage crosses a threshold.

df -h | awk 'NR>1 && $5+0 > 80 {print "Warning: High disk usage on", $6}'


---

Prerequisites

Ensure the following tools are installed:

Bash

Docker

Kubernetes CLI (kubectl)

AWS CLI

Helm

Terraform


You can check using:

command -v docker kubectl aws helm terraform


---

Running Scripts

Make scripts executable:

chmod +x script.sh

Run:

./script.sh


---

Purpose of this Repository

This repository is created to:

Practice Linux shell scripting

Build DevOps automation scripts

Improve system troubleshooting skills

Prepare for DevOps / Cloud interviews



---

Future Improvements

Planned additions:

CI/CD automation scripts

Kubernetes troubleshooting toolkit

Log analysis scripts

Monitoring scripts for production environments



---

Author

Rakshith Poojary
DevOps Engineer | Cloud | Containers | Automation


---
