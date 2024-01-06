FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04
RUN useradd -ms /bin/bash dbcooper
RUN apt update
RUN apt install -y python3 python3-pip 
RUN pip install jupyterlab
RUN echo 'root:toor' | chpasswd
USER dbcooper
WORKDIR /home/dbcooper
CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0"]