/^ADD/ {
    sub(/ADD/, "")
    cmd = "mkdir -p $(dirname " $2 ")"
    # system(cmd)
    print cmd
    cmd = "cp " $0
    # system(cmd)
    print cmd
    # if ($1 ~ /"tar.gz"/ ) {
    cmd = "tar xvfz " $1 " --directory " $2
    # system(cmd)
    print cmd
    # }
}

/^RUN/ {
    sub(/RUN/, "")
    cmd = $0
    # system(cmd)
    print cmd
}

/^ENV/ {
    sub(/ENV /, "")
    sub(/ /, "=")
    env = $0
    print env
}

/^USER/ {
    sub(/USER/, "")
    cmd = "useradd -g staff -G staff -s /bin/bash -p banana -d /home/"$1" -m "$1
    # system(cmd)
    print cmd
}
