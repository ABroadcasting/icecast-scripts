sub ices_init {
        print "Perl subsystem Initializing:\n";
        $jingle = 0;
        return 1;
}

sub ices_shutdown {
        print "Perl subsystem shutting down:\n";
}

sub ices_get_next {
        print "Perl subsystem quering for new track:\n";
  if($jingle < 5){
        $jingle ++;
        @music=`/bin/ls -1 /home/user/music/*.mp3`;
    }else{
        $jingle = 0;
        @music=`/bin/ls -1 /home/user/jingles/*.mp3`;

    }
        $num = scalar (@music);
        $play=int(rand($num));
        chomp $music[$play];
        return $music[$play];
}

return 1;