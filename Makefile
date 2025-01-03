.PHONY: all clean test

target_dir = target
tar_file := $(target_dir)/example-ddl.tar.gz

all: $(tar_file)

$(tar_file):
	@mkdir -p $(target_dir)
	@tar --transform "s/^src/example-ddl/" --exclude=passwords.txt -czf $@ src

clean:
	@rm -rf $(target_dir)

test: $(tar_file)
	@docker compose run --rm client test.sh
