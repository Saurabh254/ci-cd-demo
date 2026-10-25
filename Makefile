

run-local:
	uv run uvicorn main:app --port 8000 --reload

kill-existing:
	docker rm -f demoapp

build:
	docker build -t demoapp .

run:
	docker run -p 8000:8000 demoapp -d

pull:
	git pull origin main
deploy: kill-existing pull build run
	echo "Server restarted successfully!!!"
