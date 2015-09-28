/^ADD[ \t]+.*\.tar\.gz/ {
    sub(/ADD/, "")
    # system(cmd)
    print "mkdir -p $(dirname " $2 ") ; tar xvfz " $1 " --directory " $2
}

/^ADD/ {
    sub(/ADD/, "")
    # system(cmd)
    print "mkdir -p $(dirname " $2 ") ; cp " $0
}

/^RUN/ {
    sub(/RUN/, "")
    # system(cmd)
    print $0
}

/^ENV/ {
    sub(/ENV /, "")
    sub(/ /, "=")
    print $0
}

/^USER/ {
    sub(/USER/, "")
    # system(cmd)
    print "useradd -g staff -G staff -s /bin/bash -p banana -d /home/"$1" -m "$1
}
