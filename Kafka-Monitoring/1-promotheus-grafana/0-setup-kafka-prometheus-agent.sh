########
#### KAFKA MACHINE
########
# Download agent & config
cd /home/ec2-user
mkdir prometheus
cd prometheus
### wget https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.3.1/jmx_prometheus_javaagent-0.3.1.jar
## Using latest jar
wget https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.16.1/jmx_prometheus_javaagent-0.16.1.jar

### wget https://raw.githubusercontent.com/prometheus/jmx_exporter/master/example_configs/kafka-0-8-2.yml
## Using latest file
wget https://raw.githubusercontent.com/prometheus/jmx_exporter/master/example_configs/kafka-2_0_0.yml
wget https://raw.githubusercontent.com/prometheus/jmx_exporter/master/example_configs/zookeeper.yml
# Add: Environment="KAFKA_OPTS=-javaagent:/home/ec2-user/prometheus/jmx_prometheus_javaagent-0.3.1.jar=8080:/home/ec2-user/prometheus/kafka-0-8-2.yml"
##Environment="KAFKA_OPTS=-javaagent:/home/ec2-user/prometheus/jmx_prometheus_javaagent-0.16.1.jar=8080:/home/ec2-user/prometheus/kafka-2_0_0.yml"
sudo nano /etc/systemd/system/kafka.service
# Restart Kafka
sudo systemctl daemon-reload
sudo systemctl restart kafka

########
#### ADMIN MACHINE
########
# Download and install prometheus
cd
#wget https://github.com/prometheus/prometheus/releases/download/v2.3.2/prometheus-2.3.2.linux-amd64.tar.gz
wget https://github.com/prometheus/prometheus/releases/download/v2.35.0-rc0/prometheus-2.35.0-rc0.linux-amd64.tar.gz
tar -xzf prometheus-*.tar.gz
mv prometheus-2.3.2.linux-amd64 prometheus
rm prometheus-*.tar.gz
cd prometheus
nano prometheus.yml
./prometheus
# Setup Prometheus SystemD file
sudo nano /etc/systemd/system/prometheus.service
