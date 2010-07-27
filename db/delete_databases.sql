drop database tracks;

REVOKE ALL ON tracks.* FROM 'tracks'@'localhost';

drop user 'tracks'@'localhost';
