#Make a multi-stage build for better image size optimization, similar to cart and catalogue services
FROM python:3.9 AS build
#deault values 
# Some default values
ENV HOST="http://localhost:8080/" \
    SILENT=0 \
    NUM_CLIENTS=1 \
    ERROR=0 \
    RUN_TIME=0

# Install dependencies in a separate stage to keep the final image cleaN

WORKDIR /load

COPY requirements.txt /load/
RUN pip install --user -r requirements.txt

FROM python:3.9-slim
WORKDIR /load

COPY --from=build /root/.local /root/.local
COPY load.py /load/

ENV PATH=/root/.local/bin:$PATH
EXPOSE 8080
CMD ["python", "load.py"]