FROM alpine:3.10
RUN apk update
RUN apk add --no-cache exiv2 bash
CMD ["/bin/bash"]
