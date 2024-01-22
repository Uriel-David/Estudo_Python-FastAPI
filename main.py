from fastapi import FastAPI
import models.model as model
from routes.route import router
from configs.config import engine

model.Base.metadata.create_all(bind=engine)

app = FastAPI()

app.include_router(router, prefix="/book", tags=["book"])