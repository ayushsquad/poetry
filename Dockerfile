FROM public.ecr.aws/amazonlinux/amazonlinux:2023

RUN yum install -y python3.11-pip gcc && yum clean all

RUN pip3.11 install -U --no-cache-dir pip
RUN pip3 --no-cache-dir install poetry --break-system-packages

WORKDIR /app
