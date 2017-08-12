---
title: test
date: 2017-06-24 20:11:45
tags: 
- test
- hexo
---
中文

Welcome to [Hexo](https://hexo.io/)! This is your very first post. Check [documentation](https://hexo.io/docs/) for more info. If you get any problems when using Hexo, you can find the answer in [troubleshooting](https://hexo.io/docs/troubleshooting.html) or you can ask me on [GitHub](https://github.com/hexojs/hexo/issues).

## Quick Start

### Create a new post

``` bash
$ hexo new "My New Post"
```

More info: [Writing](https://hexo.io/docs/writing.html)

### Run server

``` javascript
function throttle(fn, time) {
  let start = new Date();
  return function() {
    let context = this;
    let args = arguments;
    let current = new Date();
    // reach to a time, trigger the function
    if (current - start >= time) {
      // console.log('start', start);
      // console.log('current', current);
      fn.apply(context, args);
      start = current;
    }
  }
}
```

More info: [Server](https://hexo.io/docs/server.html)

### Generate static files

``` bash
$ hexo generate
```

More info: [Generating](https://hexo.io/docs/generating.html)

### Deploy to remote sites

``` bash
$ hexo deploy
```

More info: [Deployment](https://hexo.io/docs/deployment.html)
