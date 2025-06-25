# Lightsec Auto Contribution Filler

This repo contains a bash script that makes automated daily commits to keep your GitHub contribution graph active.

## Scripts

- `auto_committer.sh`: Runs daily and pushes a timestamped commit.
- `backdate_commits.sh`: Pushes 50 fake commits going back 50 days.

## Usage

Make the scripts executable:
```bash
chmod +x auto_committer.sh backdate_commits.sh
```

To schedule daily commits with crontab:
```bash
crontab -e
# Add the following line
0 10 * * * /path/to/auto_committer.sh
```

Make sure you run this inside a GitHub repo with remote `origin` set.

---
Created by Neok1ra
