# link

[Kutt](https://github.com/thedevs-network/kutt) link shortener for Cascade Online at
https://link.cascadeonline.dev. Runs on gpu1 as a Coolify docker-compose app; the tunnel,
DNS and env setup are documented in `homelab-command` (`hosts/gpu1.md` → "Kutt").

- Secrets (`JWT_SECRET`, `SENDGRID_API_KEY`) are Coolify env vars; copies live in `homelab-command/.env`.
- Data: one SQLite file in volume `kutt-data`, backed up nightly by `homelab-command/backup/dump.sh`.
- Accounts: registration is off. The admin creates users on the admin page.
- Upgrade: bump the image tag in `docker-compose.yml`, push, redeploy. Migrations run on container start.
