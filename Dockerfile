FROM amazon/aws-lambda-python 

WORKDIR ${LAMBDA_TASK_ROOT}
RUN yum -y update
RUN yum -y install unixodbc-dev unixODBC unixODBC-devel epel-release gcc-c++ python3-devel
RUN python -m venv venv
RUN pip install pyodbc
CMD [ "lambda.handler" ]