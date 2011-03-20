Mirage
======
Mirage is a simple application for hosting responses to fool your applications into thinking that they are talking to real endpoints
whilst you are developing them. Its accessible via HTTP so it can be accessed via any language and has a restful interface so is easy to interact with.
Installation & Running
----------------------
> gem install mirage  
> mirage start
That's it, its running, your done... No seriously, go to http://localhost:7001/mirage and you see that its running.

Usage:
------
###Setting a response on Mirage
> http://localhost:7001/mirage/set/greeting?response=hello




