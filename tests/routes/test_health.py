import pytest
from fastapi.testclient import TestClient

from app.main import app


@pytest.fixture
def client() -> TestClient:
    return TestClient(app)


def test_health(client: TestClient):
    response = client.get("/health")

    assert response.json() == {"message": "hey there", "status": "success"}
