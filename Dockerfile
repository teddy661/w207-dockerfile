FROM tensorflow/tensorflow:2.9.2-gpu-jupyter
SHELL ["/bin/bash", "-c"]
RUN apt update
RUN apt upgrade -y 
RUN apt install -y libncurses-dev
RUN apt install -y graphviz
RUN apt install -y vim
RUN apt install -y wget
RUN apt install -y htop
RUN apt install -y libopenblas-base libopenblas-dev
RUN apt install -y liblapack3 liblapack-dev
RUN apt install -y libatlas3-base libatlas-base-dev
RUN apt install -y intel-mkl-full
RUN apt install -y libnccl2 libnccl-dev
RUN apt install -y libsqlite3-dev 
RUN apt purge --autoremove -y
RUN python3 -m pip install --no-cache-dir --upgrade pip
RUN python3 -m pip install --no-cache-dir --upgrade setuptools
RUN python3 -m pip install --no-cache-dir --upgrade certifi
RUN python3 -m pip install --no-cache-dir --upgrade kaggle beautifulsoup4 greenlet imageio pydot plotly pydot-ng aiohttp[speedups]  mypy black[jupyter] bokeh openpyxl apsw lxml Pillow wheel psutil networkx seaborn sklearn-pandas scikit-learn scikit-image 
RUN python3 -m pip install --no-cache-dir --upgrade nltk
COPY xgboost-1.6.2-cp38-cp38-linux_x86_64.whl /tf
RUN python3 -m pip install /tf/xgboost-1.6.2-cp38-cp38-linux_x86_64.whl
RUN /bin/rm /tf/xgboost-1.6.2-cp38-cp38-linux_x86_64.whl
RUN python3 -m pip install --no-cache-dir --upgrade click cupy-cuda11x
RUN python3 -m pip install --no-cache-dir --upgrade sphinx
RUN python3 -m pip install --no-cache-dir --upgrade mlxtend
RUN python3 -m pip install --no-cache-dir --upgrade statsmodels
RUN python3 -m pip install --no-cache-dir --upgrade pydotplus
RUN python3 -m pip install --no-cache-dir --upgrade graphviz
RUN python3 -m pip install --no-cache-dir --upgrade tensorflow_decision_forests
RUN python3 -m pip install --no-cache-dir --upgrade jupyterlab ipykernel jedi requests requests-unixsocket chardet six urllib3
RUN python3 -m pip install --no-cache-dir --upgrade torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]