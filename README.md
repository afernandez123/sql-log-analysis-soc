# SQL Log Analysis – SOC Simulation 🧠

[![Platform](https://img.shields.io/badge/Platform-PostgreSQL-informational)](https://www.postgresql.org/)
[![Tool](https://img.shields.io/badge/Tool-DBeaver-blue)](https://dbeaver.io/)
[![Category](https://img.shields.io/badge/Category-Threat_Hunting-orange)](https://en.wikipedia.org/wiki/Threat_hunting)
[![Status](https://img.shields.io/badge/Status-Completed-brightgreen)]()
[![Language](https://img.shields.io/badge/Language-SQL-lightgrey)]()

This project simulates the type of log analysis a Tier 1 Security Operations Center (SOC) Analyst would perform when investigating suspicious user activity.

## What It Does
- Creates a `user_activity_log` table in PostgreSQL
- Inserts mock login data including failed/successful attempts, timestamps, and IPs
- Runs SOC-style detection queries to identify potential threats

## Detection Queries Included
- Failed login attempts per user
- Repeated login failures from same IP
- Off-hours login activity (midnight to 5 AM)
- Successful logins following multiple failures (potential brute-force)

## Technologies Used
- PostgreSQL
- DBeaver
- SQL

## Example Use Cases
- Simulate SIEM data review without needing a full log pipeline
- Practice real-world SQL threat hunting techniques
- Show basic incident response logic using only a local SQL environment

## Next Steps
- Automate alerting thresholds (e.g., raise flag if failed logins > 5)
- Integrate with a bash or Python script to simulate real-time log ingestion
