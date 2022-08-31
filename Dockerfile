FROM tensorflow/tensorflow:2.9.1-gpu-jupyter
SHELL ["/bin/bash", "-c"]
RUN apt-get update
RUN apt install -y libncurses-dev
RUN apt install -y graphviz
RUN apt install -y vim
RUN apt install -y wget
RUN apt install -y libnccl2=2.13.4-1+cuda11.7 libnccl-dev=2.13.4-1+cuda11.7 
RUN python3 -m pip install --upgrade --no-cache-dir pip
RUN python3 -m pip install --upgrade --no-cache-dir setuptools
RUN python3 -m pip install --upgrade --no-cache-dir certifi
RUN python3 -m pip install --no-cache-dir kaggle beautifulsoup4 greenlet imageio pydot numba plotly pydot-ng aiohttp[speedups]  mypy black[jupyter] bokeh openpyxl apsw lxml Pillow dask-cuda wheel psutil networkx seaborn sklearn-pandas scikit-learn scikit-image 
RUN python3 -m pip install --no-cache-dir nltk
COPY xgboost-1.6.1-cp38-cp38-linux_x86_64.whl /tf
RUN python3 -m pip install /tf/xgboost-1.6.1-cp38-cp38-linux_x86_64.whl
RUN /bin/rm /tf/xgboost-1.6.1-cp38-cp38-linux_x86_64.whl
RUN python3 -m pip install --no-cache-dir click cupy-cuda11x
RUN python3 -m pip install --no-cache-dir -U sphinx
RUN python3 -m pip install --no-cache-dir -U mlxtend
RUN python3 -m pip install --no-cache-dir -U statsmodels
RUN python3 -m pip install --no-cache-dir -U pydotplus
RUN python3 -m pip install --no-cache-dir -U graphviz
RUN python3 -m pip install --no-cache-dir -U tensorflow_decision_forests