FROM ubuntu
WORKDIR /app
copy hello.sh .
run chmod +x hello.sh
cmd ["./hello.sh"]
