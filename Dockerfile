FROM tensorflow/tensorflow:2.10.0-gpu-jupyter
SHELL ["/bin/bash", "-c"]
RUN apt update
RUN apt install -y libncurses-dev
RUN apt install -y graphviz
RUN apt install -y vim
RUN apt install -y wget
RUN apt install -y htop
RUN apt install -y libopenblas-base libopenblas-dev
RUN apt install -y liblapack3 liblapack-dev
RUN apt install -y libnccl2 libnccl-dev
RUN apt install -y libsqlite3-dev 
RUN apt purge --autoremove -y
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN python3 -m pip install --no-cache-dir --upgrade pip
RUN python3 -m pip install --no-cache-dir --upgrade pyarrow
RUN python3 -m pip install --no-cache-dir --upgrade certifi
RUN python3 -m pip install --no-cache-dir --upgrade pandas
RUN python3 -m pip install --no-cache-dir --upgrade kaggle 
RUN python3 -m pip install --no-cache-dir --upgrade beautifulsoup4 
RUN python3 -m pip install --no-cache-dir --upgrade greenlet 
RUN python3 -m pip install --no-cache-dir --upgrade imageio 
RUN python3 -m pip install --no-cache-dir --upgrade pydot 
RUN python3 -m pip install --no-cache-dir --upgrade plotly 
RUN python3 -m pip install --no-cache-dir --upgrade pydot-ng 
RUN python3 -m pip install --no-cache-dir --upgrade aiohttp[speedups]  
RUN python3 -m pip install --no-cache-dir --upgrade mypy 
RUN python3 -m pip install --no-cache-dir --upgrade black[jupyter] 
RUN python3 -m pip install --no-cache-dir --upgrade bokeh 
RUN python3 -m pip install --no-cache-dir --upgrade openpyxl 
RUN python3 -m pip install --no-cache-dir --upgrade apsw 
RUN python3 -m pip install --no-cache-dir --upgrade lxml 
RUN python3 -m pip install --no-cache-dir --upgrade Pillow 
RUN python3 -m pip install --no-cache-dir --upgrade wheel 
RUN python3 -m pip install --no-cache-dir --upgrade psutil 
RUN python3 -m pip install --no-cache-dir --upgrade networkx 
RUN python3 -m pip install --no-cache-dir --upgrade seaborn 
RUN python3 -m pip install --no-cache-dir --upgrade sklearn-pandas 
RUN python3 -m pip install --no-cache-dir --upgrade scikit-learn 
RUN python3 -m pip install --no-cache-dir --upgrade scikit-image 
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
RUN python3 -m pip install --no-cache-dir --upgrade tensorboard
RUN python3 -m pip install --no-cache-dir --upgrade jupyterlab 
RUN python3 -m pip install --no-cache-dir --upgrade ipykernel 
RUN python3 -m pip install --no-cache-dir --upgrade jedi 
RUN python3 -m pip install --no-cache-dir --upgrade requests 
RUN python3 -m pip install --no-cache-dir --upgrade requests-unixsocket 
RUN python3 -m pip install --no-cache-dir --upgrade chardet 
RUN python3 -m pip install --no-cache-dir --upgrade six 
RUN python3 -m pip install --no-cache-dir --upgrade urllib3
RUN python3 -m pip install --no-cache-dir --upgrade torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
RUN python3 -m pip install --no-cache-dir numba
RUN python3 -m pip install --no-cache-dir --upgrade termcolor
RUN python3 -m pip install --no-cache-dir --upgrade tensorflow-io-gcs-filesystem
RUN python3 -m pip install --no-cache-dir --upgrade numpy
RUN python3 -m pip install --no-cache-dir --upgrade jsonschema
RUN python3 -m pip install --no-cache-dir --upgrade idna
RUN python3 -m pip install --no-cache-dir --upgrade google-auth-oauthlib 
RUN python3 -m pip install --no-cache-dir --upgrade nbclient nbconvert oauthlib certifi pytz executing fastjsonschema fonttools stack-data terminado
RUN python3 -m pip install --no-cache-dir --upgrade traitlets
RUN python3 -m pip install --no-cache-dir --upgrade matplotlib matplotlib-inline
RUN python3 -m pip install --no-cache-dir --upgrade importlib-metadata importlib-metadata importlib-resources typing_extensions
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]