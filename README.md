# CPS 310 — ICA08: DevOps Fundamentals

## Project Description

This project is a Python support-ticket reporting application. It reads ticket information from a text file and generates a formatted report showing the total number of tickets, the number of open tickets, and the number of high-priority tickets.

The project demonstrates DevOps concepts such as dependency management, configuration, automated testing, reproducibility, and release verification.

## Requirements

Before running this project, install:

- Python 3.12 or newer
- Git
- Project dependencies listed in `requirements.txt`

The project uses `tabulate` to format reports and `pytest` for automated testing.

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR-USERNAME/CPS310-ICA08-DevOps.git
cd CPS310-ICA08-DevOps
```

Replace `YOUR-USERNAME` with the GitHub account that owns the repository.

### 2. Create a Virtual Environment

On macOS:

```bash
python3 -m venv .venv
```

On Windows:

```powershell
python -m venv .venv
```

### 3. Activate the Virtual Environment

On macOS:

```bash
source .venv/bin/activate
```

On Windows PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
```

### 4. Install Dependencies

On macOS:

```bash
python3 -m pip install -r requirements.txt
```

On Windows:

```powershell
python -m pip install -r requirements.txt
```

## Configuration

Project settings are stored in `config.json`.

```json
{
  "data_file": "tickets.txt",
  "report_title": "Support Ticket Summary",
  "high_priority_threshold": 4
}
```

- `data_file`: Specifies the file containing support-ticket data.
- `report_title`: Controls the title displayed above the report.
- `high_priority_threshold`: Specifies the minimum priority value considered high priority.

These settings can be changed without modifying the Python program.

## Running the Program

On macOS:

```bash
python3 release_audit.py
```

On Windows:

```powershell
python release_audit.py
```

The program displays a formatted ticket report and summarizes the ticket counts.

## Running the Tests

The project uses pytest to verify expected behavior.

On macOS:

```bash
python3 -m pytest -v
```

On Windows:

```powershell
python -m pytest -v
```

The test suite contains six automated tests covering ticket counting, high-priority thresholds, summary generation, ticket loading, missing files, and configuration loading.

All six tests should pass.

## Running Verification

The project includes a macOS verification script named `verify.sh`.

First, make the script executable:

```bash
chmod +x verify.sh
```

Then execute it:

```bash
./verify.sh
```

The verification script:

1. Runs the complete pytest suite with verbose output.
2. Checks whether `requirements.txt` exists.
3. Checks whether `config.json` exists.
4. Displays the Git working-tree status using `git status --short`.

The script provides feedback about the project's release readiness.

## Release Readiness

This project is more reproducible and release-ready than the original starter version because its external dependencies are recorded in `requirements.txt`, configuration settings are separated from the Python program, and the ticket-counting defect has been corrected. Automated tests and a verification script provide repeatable checks, while the README documents the steps necessary for another developer to recreate the environment and run the application.