# Usa una imagen base con Conda preinstalado
FROM continuumio/miniconda3

# Establece el directorio de trabajo en /apps
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY . /app

# Crea el entorno Conda y actívalo
RUN conda env create -f environment.yml

# Activa el entorno por defecto al iniciar el contenedor
SHELL ["conda", "run", "-n", "venv_R", "/bin/bash", "-c"]

# Expone el puerto donde corre la app (ajústalo según tu aplicación)
EXPOSE 5000

# Comando para ejecutar la app en el contenedor
CMD ["conda", "run", "-n", "venv_R", "python", "App.py"]