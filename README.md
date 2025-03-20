# Logging and Monitoring Setup

This repository contains configurations for deploying a logging infrastructure using:

- **Fluentd** for log aggregation
- **HashiCorp Nomad** for job scheduling
- **BOSH** for Zookeeper deployment
- **Azure Blob Storage** for log archiving

## Files
- `fluentd-config/job.nomad` - Nomad job specification for a frontend application
- `fluentd-config/zookeeper.yml` - Zookeeper deployment config for BOSH
- `fluentd-config/logging-arch.txt` - ASCII representation of log archiving using Azure Blob Storage

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/joshuaombasa/Logging-and-Monitoring-Setup
   cd my-logging-setup
