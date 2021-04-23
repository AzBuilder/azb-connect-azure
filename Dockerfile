FROM mcr.microsoft.com/azure-cli
COPY ./connectAzure.sh .
RUN chmod +x connectAzure.sh

CMD ["./connectAzure.sh"]