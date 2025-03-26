# Erasmus Contracts Generator

Erasmus Contracts Generator is a web application that automates the process of creating contracts for Erasmus projects. It allows users to upload Word templates with placeholders and Excel files with data, and then generates personalized contracts for each participant.

## Features

- **User Authentication**: Register and login with email and password
- **Contract Management**: Create, view, and manage contracts
- **Template Upload**: Upload Word templates with placeholders
- **Excel Integration**: Upload Excel files and map columns to placeholders
- **Automatic Document Generation**: Generate personalized contracts for each participant
- **Bulk Download**: Download all generated documents as a ZIP file

## Technologies Used

- **Backend**: Python FastAPI
- **Frontend**: HTMX, Tailwind CSS
- **Database**: PostgreSQL
- **Document Processing**: python-docx, openpyxl, pandas
- **Deployment**: Docker, Caprover

## Installation

### Local Development

1. Clone the repository:
   ```
   git clone https://github.com/torturer33/erasmus-caprover.git
   cd erasmus-caprover
   ```

2. Create a virtual environment and install dependencies:
   ```
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install -r requirements.txt
   ```

3. Set up the database:
   ```
   # Create a PostgreSQL database named 'erasmus_contracts'
   # Update the DATABASE_URL in .env if needed
   ```

4. Run the application:
   ```
   python app.py
   ```

5. Access the application at http://localhost:8000

### Docker Deployment

You can also run the application using Docker Compose:

```bash
docker-compose up --build
```

This will start both the application and a PostgreSQL database.

## Caprover Deployment

This project is configured for easy deployment with Caprover. Follow these steps:

1. Set up Caprover on your server and make sure you have the Caprover CLI installed:
   ```bash
   npm install -g caprover
   ```

2. Create a new app in your Caprover dashboard

3. Set up a PostgreSQL database:
   - In Caprover, go to "Apps" > "One-Click Apps/Databases" and select PostgreSQL
   - Configure and deploy the database
   - Note the database credentials

4. Configure your application environment variables in Caprover:
   - `POSTGRES_USER`: PostgreSQL username
   - `POSTGRES_PASSWORD`: PostgreSQL password
   - `POSTGRES_HOST`: PostgreSQL host (app name in Caprover)
   - `POSTGRES_PORT`: PostgreSQL port (usually 5432)
   - `POSTGRES_DB`: Database name
   - `SECRET_KEY`: Your secret key for JWT tokens

5. Deploy the application:
   ```bash
   # In your local project directory
   caprover deploy
   ```

6. Follow the CLI prompts to complete the deployment

## Project Structure

```
erasmus-caprover/
├── app/
│   ├── api/            # API endpoints
│   ├── core/           # Core functionality
│   ├── db/             # Database models and connection
│   ├── models/         # SQLAlchemy models
│   ├── schemas/        # Pydantic schemas
│   ├── static/         # Static files (CSS, JS)
│   └── templates/      # HTML templates
├── alembic/            # Database migrations
├── uploads/            # Uploaded files
├── .env                # Environment variables
├── .env.production     # Production environment variables
├── Dockerfile          # Docker configuration
├── docker-compose.yml  # Docker Compose configuration
├── entrypoint.sh       # Docker entrypoint script
├── captain-definition  # Caprover configuration
├── app.py              # Main application file
└── requirements.txt    # Dependencies
```

## Usage

1. Register a new account or login
2. Create a new contract by providing a name, project type, and activity type
3. Upload Word templates for the contract
4. Upload an Excel file with participant data
5. Map Excel columns to template placeholders
6. Generate documents
7. Download the generated documents

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgements

- [FastAPI](https://fastapi.tiangolo.com/)
- [HTMX](https://htmx.org/)
- [Tailwind CSS](https://tailwindcss.com/)
- [python-docx](https://python-docx.readthedocs.io/)
- [openpyxl](https://openpyxl.readthedocs.io/) 
- [Docker](https://www.docker.com/)
- [Caprover](https://caprover.com/)