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