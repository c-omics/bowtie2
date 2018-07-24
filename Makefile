

subdirs = 2.2.9 \
          2.3.4.1

LATEST=2.3.4.1

.PHONY: $(subdirs)

all: $(subdirs)
build: $(subdirs)
test: $(subdirs)
clean: $(subdirs)

$(subdirs):
	$(MAKE) -C $@  $(MAKECMDGOALS) LATEST=$(LATEST)
	

