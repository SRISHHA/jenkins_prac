from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

# Create a Pydantic model for the input data


@app.get("/hello")
async def hello_world():
    return {"message": "Hello!"}
