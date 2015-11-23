mkdocs (docker image)
=====================

This image will provide you mkdocs. Some examples of its usage:

Create a new project
--------------------

    docker run -it --rm -v `pwd`:/docs jobandtalent/mkdocs new my-project

Serve your project
------------------

If you are inside a VM (boot2docker or similar) you will need to set the host to `0.0.0.0`:

    cd my-project
    docker run -it --rm -v `pwd`:/docs -p 8000:8000 jobandtalent/mkdocs serve -a 0.0.0.0:8000

Build your docs
---------------

    cd my-project
    docker run -it --rm -v `pwd`:/docs jobandtalent/mkdocs build

If you want to generate them in other place mount `/docs/site` as a volume:

    docker run -it --rm -v `pwd`:/docs -v $HOME/Desktop/site:/docs/site jobandtalent/mkdocs build
