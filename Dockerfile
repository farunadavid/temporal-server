FROM golang

WORKDIR /src

COPY go.mod /src/

COPY go.sum /src/

COPY . .

#RUN go run ./worker/main.go 

#RUN go run ./starter/main.go

CMD [ "tail","-f","/dev/null" ]