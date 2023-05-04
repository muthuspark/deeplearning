FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN apt-get update && apt-get install -y python3-pandas

RUN pip install --upgrade pip

RUN pip install keras seaborn transformers sentence_transformers

RUN pip install https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master jupyter_contrib_nbextensions

RUN jupyter contrib nbextension install --user && jupyter nbextensions_configurator enable --user