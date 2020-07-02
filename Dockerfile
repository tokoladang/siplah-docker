FROM tokoladang/siplah:php

COPY etc /etc
RUN sed -i 's/opcache.enable=0/opcache.enable=1/g' /etc/php.ini
RUN sed -i 's/opcache.save_comments=0/opcache.save_comments=1/g' /etc/php.ini
RUN sed -i 's/zend_optimizerplus.save_comments=0/zend_optimizerplus.save_comments=1/g' /etc/php.ini
