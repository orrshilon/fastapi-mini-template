from fastapi import APIRouter, Depends

from app.core.di import get_service
from app.routes.models import ApiResponse
from app.service.service import Service

router = APIRouter()


@router.get("/", tags=["api"])
async def service(service: Service = Depends(get_service)) -> ApiResponse:
    return ApiResponse()
