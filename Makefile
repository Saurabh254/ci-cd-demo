

run-local:
	uv run uvicorn main:app --port 8000 --reload

kill-existing:
	docker rm -f demoapp

build:
	docker build -t demoapp .

run:
	docker run -d -p 8000:8000 --name demoapp demoapp

pull:
	git pull origin main
deploy: kill-existing build run
	echo "Server restarted successfully!!!"
