from fastapi import FastAPI

app = FastAPI()


@app.get("/health")
async def get_health():
    return {"status": "ok"}


@app.get("/")
async def root():
    return "<h1>webpage </h1>"
