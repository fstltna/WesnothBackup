# Wesnoth Server backup script (1.0)
Creates a backup of your Wesnoth Server folder

---

1. Edit the settings at the top of wesnothbackup.pl if needed
2. create a cron job like this:

        1 1 * * * /root/WesnothBackup/wesnothbackup.pl

3. This will back up your Wesnoth Server installation at 1:01am each day, and keep the last 5 backups.

If you need more help visit https://wesnoth.Gameplayer.club/
