/^ADD/ {
	sub(/ADD/, "")
    cmd = "mkdir -p $(dirname " $2 ")"
    # system(cmd)
    print cmd
    cmd = "cp " $0
    # system(cmd)
    print cmd
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
