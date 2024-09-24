# Alpine Linux Ruby Environment

## Purpose:

1. Practice using Docker (or Containerization, in general) through the incremental evolution of this Environment.
2. Test and experiment with the Ruby language and features within this container that can easily be setup anywhere

## Usage:

1. [Install Docker](https://docs.docker.com/engine/install/) (if haven't already)
1. Clone this repo
1. `cd` into this repo directory
1. Build the image `docker build . -t alp_v3_20-ruby_3_3_3:v1`. You can tag it however you'd like. An explanation of this command:
   1. `docker build .` - The `.` means from "here", meaning, from our current directory (assuming you `cd` into this repo and are using its `Dockerfile`)
   1. `-t <name:tag>`
1. You can then run it interactively `docker run -it alp_v3_20-ruby_3_3_3:v1`; it'll start, launch a shell, and you'll be _inside_ the container, able to execute Ruby commands.

### No Gemfile?

The assumption is that you'll use this base image as the "box" for another code or set of Ruby files, however, you are free to add a `Gemfile` to this repo, `bundle install`, and add any code you wish. Originally, I had:

- a Ruby file
- a test for that Ruby file
- `gem "minitest"

If you follow that pattern, you should be able to run some Ruby code and any MiniTest assertions!

### With a "Volume"

If you'd like to use this container to run code that is local to your machine, you can do so by adding the `-v` flag. It's easier if you navigate to the location of the Ruby code you'd like to run, but not necessary. Here's an example:

```shell
cd ~/<user>/some/dir
# "app" is because this container uses it as its Working Directory
# the "-v .:/app" basically means, mount the files of our current location to the /app directory in the container using the image of <name:tag>
docker run -it -v .:/app alp_v3_20-ruby_3_3_3:v1
```

## DockerHub

This has been [published to DockerHub](https://hub.docker.com/repository/docker/ballenacuadrada/alpine3_20/general). There are several versions, but the key one is the `-multiplatform` version that can be used on either ARM or x86.

I don't know how much I'll add to or modify these, however, the details in this README serve as notes for future Docker work

Enjoy!
