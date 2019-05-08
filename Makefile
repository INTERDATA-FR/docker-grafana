build:
	docker build -t  interdatafr/grafana:6.1.6 .

stop:
	docker stop grafana
	docker container rm grafana

run:
	docker run -d --name=grafana -p 3000:3000 interdatafr/grafana:6.1.6