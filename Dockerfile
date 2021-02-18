FROM jupyter/datascience-notebook:lab-2.1.5
RUN conda install -y opencv=4.4.0
RUN echo "c.ExecutePreprocessor.timeout = None" >> $HOME/jupyter_nbconvert_config.py
RUN pip install replicate==0.2.1

USER root
RUN apt-get update -y && \
      apt-get install -y git && \
      apt-get clean

USER jovyan
