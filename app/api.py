from fastapi import APIRouter
from pydantic import BaseModel

router = APIRouter()

class RootRouteResponse(BaseModel):
    message: str

@router.get("/")
async def read_root() -> RootRouteResponse:
    return RootRouteResponse(
        message="Hello, World!"
    )
