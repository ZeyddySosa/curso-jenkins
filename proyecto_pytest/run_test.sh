#! /bin/bash

echo "Activando entorno virtual"
if [!"-d venv" ]; then
    python3 -m venv venv
fi

source venv/bin/activate

echo "Instalando dependencias"
pip install --upgrade pip
pip install -r requirements.txt

echo "Ejecutando pruebas con pytest"
pytest tests/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "Pruebas finalizadas resultados en reports"