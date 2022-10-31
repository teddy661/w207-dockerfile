FROM tensorflow/tensorflow:2.8.3-gpu-jupyter
SHELL ["/bin/bash", "-c"]
RUN apt update
RUN apt install -y libncurses-dev \
    graphviz \
    wget \
    htop \
    libopenblas-base libopenblas-dev \
    liblapack3 liblapack-dev \
    libnccl2 libnccl-dev \
    libsqlite3-dev 
RUN apt purge --autoremove -y
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN python3 -m pip install --no-cache-dir --upgrade pip 
RUN python3 -m pip install --no-cache-dir --upgrade pyarrow \
    certifi \
    numpy \
    numba \
    pandas \
    kaggle \
    beautifulsoup4 \
    greenlet \
    imageio \
    pydot \
    plotly \
    pydot-ng \
    aiohttp[speedups] \
    mypy \
    black[jupyter] \
    bokeh \
    openpyxl \
    apsw \
    lxml \
    Pillow \
    psutil \
    networkx \
    seaborn \
    scipy \
    scikit-learn \
    scikit-image \
    sklearn-pandas \
    nltk \
    click \
    sphinx \
    mlxtend \
    statsmodels \
    pydotplus \
    graphviz \
    tensorflow-io-gcs-filesystem \ 
    jupyterlab \
    ipykernel \
    ipython \
    termcolor \
    pytz \
    matplotlib \
    matplotlib-inline \
    tifffile[all] \
    opencv-contrib-python-headless \
    absl-py \
    chardet \
    executing \
    fonttools \
    importlib-metadata importlib-resources zipp \
    jedi \
    jsonschema fastjsonschema \
    jupyter_client nbclient nbconvert notebook \
    nest-asyncio \
    oauthlib \
    parso \
    prometheus-client \
    requests requests-unixsocket  \
    six \
    terminado \
    traitlets \
    typing_extensions \
    urllib3 \
    wheel \
    pyzmq \
    stack-data \
    idna \
    tinycss2 \
    setuptools \
    jupyter-core \
    asttokens \
    QtPy \
    papermill  
RUN pip uninstall -y PyGObject
RUN python3 -m pip install --no-cache-dir  tensorflow_decision_forests==0.2.4 tensorboard==2.8.0
COPY xgboost-1.6.2-cp38-cp38-linux_x86_64.whl /tf
RUN python3 -m pip install /tf/xgboost-1.6.2-cp38-cp38-linux_x86_64.whl
RUN /bin/rm /tf/xgboost-1.6.2-cp38-cp38-linux_x86_64.whl
RUN python3 -m pip install --no-cache-dir --upgrade torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]