# FastAPI + PostgreSQL - Boilerplate Docker

## Setup
You need to copy the .env.example to an .env file. Next, adjust the .env with your desired settings and the init_db.sql file with the chosen database name. Then you must proceed with the creation of the Python virtual environment:

- `python3 -m venv env`
- `source env/bin/activate`
- `pip install fastapi uvicorn` and and other necessary dependencies according to the project.
- `docker-compose up -d --build`

And the project will be running smoothly.

## Comments
I added a small example structure but there is no dependency to use and it can be changed and all libs also follow the same pattern. The only thing will be necessary to update the requirements with the following command `pip freeze > requirements.txt` and thus rebuild the container.