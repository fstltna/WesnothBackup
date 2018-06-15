#!/usr/bin/perl

# Set these for your situation
my $WESNOTHDIR = "/usr/local/share/wesnoth";
my $BACKUPDIR = "/root/backups";
my $TARCMD = "/bin/tar czf";

#-------------------
# No changes below here...
#-------------------
my $VERSION = "1.0";

print "Wesnoth Server Backup version $VERSION\n";
print "========================\n";
if (! -d $BACKUPDIR)
{
	print "Backup dir $BACKUPDIR not found, creating...\n";
	system("mkdir -p $BACKUPDIR");
}
print "Moving existing backups: ";

if (-f "$BACKUPDIR/wesnothbackup-5.tgz")
{
	unlink("$BACKUPDIR/wesnothbackup-5.tgz")  or warn "Could not unlink $BACKUPDIR/wesnothbackup-5.tgz: $!";
}
if (-f "$BACKUPDIR/wesnothbackup-4.tgz")
{
	rename("$BACKUPDIR/wesnothbackup-4.tgz", "$BACKUPDIR/wesnothbackup-5.tgz");
}
if (-f "$BACKUPDIR/wesnothbackup-3.tgz")
{
	rename("$BACKUPDIR/wesnothbackup-3.tgz", "$BACKUPDIR/wesnothbackup-4.tgz");
}
if (-f "$BACKUPDIR/wesnothbackup-2.tgz")
{
	rename("$BACKUPDIR/wesnothbackup-2.tgz", "$BACKUPDIR/wesnothbackup-3.tgz");
}
if (-f "$BACKUPDIR/wesnothbackup-1.tgz")
{
	rename("$BACKUPDIR/wesnothbackup-1.tgz", "$BACKUPDIR/wesnothbackup-2.tgz");
}
print "Done\nCreating New Backup: ";
system("$TARCMD $BACKUPDIR/wesnothbackup-1.tgz $WESNOTHDIR");
print("Done!\n");
exit 0;
