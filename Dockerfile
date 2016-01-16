FROM dmoj/judge-base-medium:latest

COPY judge.yml /judge/
USER judge

ENTRYPOINT ["/usr/bin/python", "-u", "main.py", "-c", "/judge/judge.yml"]
