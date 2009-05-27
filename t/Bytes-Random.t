# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Bytes-Random.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 41;
BEGIN { use_ok('Bytes::Random') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

for( 1..40 )
{
  is(
    length( random_bytes($_) ) => $_,
    "Got $_ random bytes"
  );
}# end for()


