from fastapi import FastAPI
from typing import List, Dict, Any

app = FastAPI()


@app.get("/health")
async def check_health():
    return {"message": "Health is checked"}
