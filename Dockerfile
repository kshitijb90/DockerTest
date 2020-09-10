FROM python
MAINTAINER ssriva41
RUN apt-get update && apt-get  install vim -y
RUN pip install xlrd
RUN mkdir /app
RUN chown 1001 /app
ARG BRANCH_NAME
USER 1001
RUN cd /app; git clone https://github.com/kshitijb90/DockerTest.git
WORKDIR /app/DockerTest
RUN cd /app/DockerTest
COPY KB/T1.txt /app/DockerTest
RUN ls
#ENV FM_APP=FMtest.py
#ENV FM_ENV=development
EXPOSE 5000
#ENTRYPOINT ["python", "FMtest.py"]
ENTRYPOINT ["python"]
#CMD ["FMtest.py", "param1", "param2"]
CMD ["/app/DockerTest/FMtest.py", "param1"]
#CMD ["python","-m","test","run","--host=0.0.0.0"]
