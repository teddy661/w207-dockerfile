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
RUN python3 -m pip install --no-cache-dir tensorflow_decision_forests==0.2.7 
RUN python3 -m pip install --no-cache-dir --upgrade jupyterlab ipykernel jedi requests requests-unixsocket chardet six urllib3
RUN python3 -m pip install --no-cache-dir --upgrade torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
RUN python3 -m pip install --no-cache-dir --upgrade numba
RUN python3 -m pip install --no-cache-dir --upgrade termcolor
RUN python3 -m pip install --no-cache-dir --upgrade numpy
RUN python3 -m pip install --no-cache-dir --upgrade jsonschema fastjsonschema fonttools
RUN python3 -m pip install --no-cache-dir --upgrade idna
RUN python3 -m pip install --no-cache-dir --upgrade google-auth-oauthlib 
RUN python3 -m pip install --no-cache-dir --upgrade nbclient oauthlib
RUN python3 -m pip install --no-cache-dir --upgrade traitlets
RUN python3 -m pip install --no-cache-dir --upgrade executing
RUN python3 -m pip install --no-cache-dir --upgrade matplotlib matplotlib-inline ipython
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]