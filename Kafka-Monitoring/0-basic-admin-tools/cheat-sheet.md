# ZooNavigator

Automatically Launch at Boot Time:
```
sudo systemctl enable docker-compose@zoonavigator
```

Start
```
sudo systemctl start docker-compose@zoonavigator
```

# Kafka Manager

Automatically Launch at Boot Time:
```
sudo systemctl enable docker-compose@kafka-manager
```

Start
```
sudo systemctl start docker-compose@kafka-manager
```

# Kafka Monitor

Automatically Launch at Boot Time:
```
sudo systemctl enable kafka-monitor
```

Start
```
sudo systemctl start kafka-monitor
```
## Grafana

sudo systemctl start grafana
sudo systemctl status grafana

## Prometheus

sudo systemctl status prometheus
sudo systemctl start prometheus

## Jorunalctl
journalctl -u prometheus
journalctl -u zookeeper
