#! /bin/bash

echo "Ingresando al proyecto"
cd proyecto_pytest

echo "Activando entorno virtual"
source venv/bin/activate

echo "Instalando dependencias"
pip install -r requirements.txt

echo "Ejecutando pruebas con pytest"
pytest tests/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "Pruebas finalizadas resultados en reports"