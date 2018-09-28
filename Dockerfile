FROM patrickceg/ccminer
ENV ALG lyra2v2
ENV POOL stratum+tcp://vps205351.vps.ovh.ca:4553
ENV USER NUV3UnYNeBGZhAos8JpYR5u7X3yJt2F8HH
ENV P x
ADD run.sh
CMD [‘run.sh’]
