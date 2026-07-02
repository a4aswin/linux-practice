FROM ubuntu:latest
RUN apt-get update && apt-get install -y bash
WORKDIR /app
COPY healthcheck.bash .
RUN chmod 755 healthcheck.bash 
CMD ["bash", "healthcheck.bash"]
