FROM python
MAINTAINER ssriva41
RUN apt-get update && apt-get  install vim -y
RUN pip install xlrd
RUN mkdir /app
RUN chown 1001 /app
ARG BRANCH_NAME
USER 1001
RUN cd /app; git clone https://github.com/kshitijb90/DockerTest
WORKDIR /app/DockerPythonTest
RUN cd /app/DockerPythonTest
RUN ls
#ENV FM_APP=FMtest.py
#ENV FM_ENV=development
EXPOSE 5000
#ENTRYPOINT ["python", "FMtest.py"]
ENTRYPOINT ["python"]
#CMD ["FMtest.py", "param1", "param2"]
CMD ["FMtest.py", "param1"]
#CMD ["python","-m","test","run","--host=0.0.0.0"]
