# -*- coding:utf-8 -*-
# @Author: 15b883
from fastapi import FastAPI
import uvicorn
 
app = FastAPI()
 
@app.get("/")
async def index():
    return {"Hello": "FastAPI"}

    
if __name__ == "__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=8080)
