FROM tensorflow/tensorflow:2.8.3-gpu-jupyter
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
RUN python3 -m pip install --no-cache-dir  tensorflow_decision_forests==0.2.4 
RUN python3 -m pip install --no-cache-dir  tensorboard==2.8.0
RUN python3 -m pip install --no-cache-dir --upgrade jupyterlab 
RUN python3 -m pip install --no-cache-dir --upgrade ipykernel
RUN python3 -m pip install --no-cache-dir --upgrade ipython  
RUN python3 -m pip install --no-cache-dir --upgrade jedi 
RUN python3 -m pip install --no-cache-dir --upgrade requests 
RUN python3 -m pip install --no-cache-dir --upgrade requests-unixsocket 
RUN python3 -m pip install --no-cache-dir --upgrade chardet 
RUN python3 -m pip install --no-cache-dir --upgrade six 
RUN python3 -m pip install --no-cache-dir --upgrade urllib3
RUN python3 -m pip install --no-cache-dir --upgrade torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
RUN python3 -m pip install --no-cache-dir numba
RUN python3 -m pip install --no-cache-dir --upgrade termcolor
RUN python3 -m pip install --no-cache-dir --upgrade numpy
RUN python3 -m pip install --no-cache-dir --upgrade jsonschema
RUN python3 -m pip install --no-cache-dir --upgrade idna
RUN python3 -m pip install --no-cache-dir --upgrade google-auth-oauthlib 
RUN python3 -m pip install --no-cache-dir --upgrade nbclient 
RUN python3 -m pip install --no-cache-dir --upgrade nbconvert 
RUN python3 -m pip install --no-cache-dir --upgrade oauthlib 
RUN python3 -m pip install --no-cache-dir --upgrade certifi 
RUN python3 -m pip install --no-cache-dir --upgrade pytz 
RUN python3 -m pip install --no-cache-dir --upgrade executing 
RUN python3 -m pip install --no-cache-dir --upgrade fastjsonschema 
RUN python3 -m pip install --no-cache-dir --upgrade fonttools 
RUN python3 -m pip install --no-cache-dir --upgrade stack-data 
RUN python3 -m pip install --no-cache-dir --upgrade terminado
RUN python3 -m pip install --no-cache-dir --upgrade scipy
RUN python3 -m pip install --no-cache-dir --upgrade traitlets
RUN python3 -m pip install --no-cache-dir --upgrade matplotlib matplotlib-inline
RUN python3 -m pip install --no-cache-dir --upgrade importlib-metadata 
RUN python3 -m pip install --no-cache-dir --upgrade importlib-resources 
RUN python3 -m pip install --no-cache-dir --upgrade typing_extensions 
RUN python3 -m pip install --no-cache-dir --upgrade pyzmq 
RUN python3 -m pip install --no-cache-dir --upgrade zipp
RUN python3 -m pip install --no-cache-dir --upgrade executing
RUN python3 -m pip install --no-cache-dir --upgrade nest-asyncio
RUN python3 -m pip install --no-cache-dir --upgrade tifffile[all]
RUN python3 -m pip install --no-cache-dir --upgrade greenlet
RUN python3 -m pip install --no-cache-dir --upgrade patsy
RUN python3 -m pip install --no-cache-dir --upgrade jupyter_client
RUN python3 -m pip install --no-cache-dir --upgrade jupyter-server
RUN python3 -m pip install --no-cache-dir --upgrade nbformat
RUN python3 -m pip install --no-cache-dir --upgrade opencv-contrib-python-headless
RUN python3 -m pip install --no-cache-dir --upgrade importlib-metadata importlib-metadata importlib-resources typing_extensions zipp 
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]