FROM python:3.9.0b4-alpine3.12

WORKDIR /nazev

COPY my_py_sc.py .

COPY cron_root /var/spool/cron/cron_root

RUN chmod +x my_py_sc.py

CMD crond -l 2 -f          #-l list all of mine jobs, -f foreground 