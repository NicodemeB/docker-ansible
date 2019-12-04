FROM williamyeh/ansible:debian9

RUN apt update 
RUN echo yes |apt install python-pip
RUN pip install PyVmomi

RUN echo yes |apt autoremove python-pip

RUN mkdir /ansible 
WORKDIR /ansible