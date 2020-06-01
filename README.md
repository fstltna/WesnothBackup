# Wesnoth Server backup script (1.1)
Creates a backup of your Wesnoth Server folder

Official support sites: [Official Github Repo](https://github.com/fstltna/WesnothBackup) - [Official Forum](https://wesnoth.gameplayer.club/index.php/forum/wesnoth-server-tools)  - [Official Download Area](https://wesnoth.gameplayer.club/index.php/downloads/category/5-wesnoth-server-tools)
![Wesnoth Sample Screen](https://wesnoth.gameplayer.club/The_Battle_for_Wesnoth.jpg)

---

1. Edit the settings at the top of wesnothbackup.pl if needed
2. create a cron job like this:

        1 1 * * * /home/wesnothowner/WesnothBackup/wesnothbackup.pl

3. This will back up your Wesnoth Server installation at 1:01am each day, and keep the last 5 backups.

If you need more help visit https://wesnoth.Gameplayer.club/
