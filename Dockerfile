FROM shoothzj/base

RUN sudo apt-get update && \
    apt-get install -y gpg lsb-release && \
    curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && \
    sudo apt-get update && \
    sudo apt-get install -y pgadmin4-web && \
    sudo apt-get clean all
