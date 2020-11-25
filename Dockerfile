FROM jupyter/datascience-notebook:lab-2.1.5
RUN conda install -y opencv=4.4.0
RUN echo "c.ExecutePreprocessor.timeout = None" >> $HOME/jupyter_nbconvert_config.py
