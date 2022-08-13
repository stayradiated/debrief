.PHONY: build run

build:
	docker build -t stayradiated/debrief:latest .

run:
	docker run --name=debrief --rm -p 7777:7777 --env-file .env stayradiated/debrief:latest
