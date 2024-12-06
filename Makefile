##
# RSS aggregator
#
# @file
# @version 0.1
BINARY_NAME=go-rss

.PHONEY: build test run clean 

build:
	go build -o ./bin/${BINARY_NAME} 

deps:
	go get github.com/go-chi/chi
	go get github.com/go-chi/cors
	go get github.com/joho/godotenv
 

test:
	go test -v 

run:
	go build -o ./bin/${BINARY_NAME} 
	./bin/${BINARY_NAME}

clean:
	go clean
	rm ./bin/${BINARY_NAME}


# end
