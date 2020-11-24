FROM jupyter/datascience-notebook
RUN conda install -y opencv
RUN echo "c.ExecutePreprocessor.timeout = None" >> $HOME/jupyter_nbconvert_config.py
