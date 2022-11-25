
all: $(subst src/,,$(subst .c,,$(wildcard src/*.c)))

%: src/%.c
	@echo Complie [$@]
	@test -d build || mkdir build
	@gcc -static -o ./build/$@ src/$@.c
	@test -f ./build/$@ && echo "Built Success" || echo Fail

clean:
	@rm -f ./build/*/* && echo "Clean Success" || echo Fail

dbuild:
	docker-compose up
	docker-compose down