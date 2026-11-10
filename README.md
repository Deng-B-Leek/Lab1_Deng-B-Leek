# Lab 1: FSD, but on Kigali Roads

## Introduction

This project is a Python-based Full Self-Driving (FSD) road simulation set in Kigali, Rwanda. It simulates a vehicle journey from African Leadership University (ALU Rwanda) to the Kigali Convention Center.

The project demonstrates how a vehicle can respond to different road signs, control its speed, stop at zebra crossings, change lanes, and complete a journey while following road conditions.

It also includes a Bash Log Analyser that reads the simulation log and provides a summary of driving activities.

## Features

### Python Road Simulation

- Validates road signs.
- Identifies speed limits, zebra crossings, and bus signs.
- Adjusts vehicle speed based on road conditions.
- Stops at zebra crossings.
- Changes lanes when necessary.
- Counts different types of road signs.
- Allows users to insert and replace road signs.
- Calculates journey summaries.
- Simulates a driving journey in Kigali.

### Bash Log Analyser

- Reads the simulation log file.
- Counts the number of simulation sessions.
- Counts zebra crossing stops.
- Counts lane changes.
- Displays the latest driver's name.
- Displays the latest trip's top speed.
- Supports a custom log filename.

## Technologies Used

- Python 3
- Bash Shell
- Linux / Ubuntu
- Git and GitHub

## Project Files

- `road_simulation.py` – Main simulation and completed Python functions.
- `engine.py` – Simulation engine.
- `transit_program.py` – Road management menu.
- `index.html` – Simulation interface.
- `analyze_log.sh` – Bash script for analysing simulation logs.
- `transit_session.log` – Log file containing simulation activities.
- `README.md` – Project documentation.
- `.gitignore` – Specifies files Git should ignore.

## How to Run

### 1. Run the Python Simulation

Open your terminal and navigate to the project directory:

```bash
cd lab1_kigali
```

Run the simulation:

```bash
python3 road_simulation.py
```

### 2. Run the Bash Log Analyser

After running the simulation, analyse the generated log:

```bash
bash analyze_log.sh
```

By default, the script reads `transit_session.log`.

You can also provide a different log file:

```bash
bash analyze_log.sh my_log.log
```

## Example Log Analysis Output

```text
========== KIGALI ROAD LOG ANALYSIS ==========
Log file: transit_session.log
Total sessions: 2
Zebra crossing stops: 3
Lane changes: 6
Latest driver: Deng
Latest top speed: 80 km/h
===============================================
```
